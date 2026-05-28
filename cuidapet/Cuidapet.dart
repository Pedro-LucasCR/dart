import 'dart:io';

// CONTROLE GERAL DO SISTEMA
int totalPedidos = 0;
double faturamentoTotal = 0.0;

// LIMPAR TERMINAL
void limparConsole() {
  stdout.write('\x1B[2J\x1B[0;0H');
}

void main() {
  bool sistemaAtivo = true;

  while (sistemaAtivo) {
    limparConsole();

    print("=================================");
    print(" CUIDA PET");
    print("=================================");
    print("Digite seu nome para continuar");
    print("Ou digite 'sair' para fechar o sistema:");

    String usuario = stdin.readLineSync()?.trim() ?? "";

    if (usuario.toLowerCase() == "sair") {
      sistemaAtivo = false;
      break;
    }

    if (usuario == "petadmin") {
      areaFuncionario();
    } else {
      menuCliente(usuario);
    }
  }

  fechamentoSistema();
}

// ================= FUNCIONÁRIOS =================

void areaFuncionario() {
  limparConsole();

  print("===== ÁREA ADMINISTRATIVA =====");

  print("Nome do cliente:");
  String cliente = stdin.readLineSync() ?? "";

  print("Valor da compra:");
  double valor =
      double.tryParse(stdin.readLineSync()?.replaceAll(',', '.') ?? '') ?? 0;

  print("Pagamento (PIX ou CARTAO):");
  String pagamento = stdin.readLineSync()?.toUpperCase() ?? "";

  double valorFinal = valor;

  if (pagamento == "PIX") {
    valorFinal = valor * 0.95;
    print("Desconto de 5% aplicado!");
  }

  print("\nCliente: $cliente");
  print("Valor final: R\$ ${valorFinal.toStringAsFixed(2)}");

  totalPedidos++;
  faturamentoTotal += valorFinal;

  print("\nPressione ENTER para voltar.");
  stdin.readLineSync();
}

// ================= CLIENTE =================

void menuCliente(String nome) {
  List<String> itens = [];
  List<double> valores = [];

  bool menuAtivo = true;

  while (menuAtivo) {
    limparConsole();

    print("Olá, $nome!");
    print("==========================");
    print("1 - Produtos");
    print("2 - Serviços");
    print("3 - Ver carrinho");
    print("4 - Finalizar pedido");
    print("0 - Encerrar sessão");
    print("==========================");

    int escolha = int.tryParse(stdin.readLineSync() ?? "") ?? -1;

    switch (escolha) {
      case 1:
        menuProdutos(itens, valores);
        break;

      case 2:
        menuServicos(itens, valores);
        break;

      case 3:
        mostrarCarrinho(itens, valores);
        break;

      case 4:
        bool finalizado = concluirPedido(nome, itens, valores);

        if (finalizado) {
          menuAtivo = false;
        }
        break;

      case 0:
        menuAtivo = false;
        break;

      default:
        print("Opção inválida!");
        stdin.readLineSync();
    }
  }
}

// ================= PRODUTOS =================

void menuProdutos(List<String> itens, List<double> valores) {
  bool aberto = true;

  while (aberto) {
    limparConsole();

    print("===== PRODUTOS =====");
    print("101 - Coleira Premium .......... R\$ 45.90");
    print("102 - Caminha Pet .............. R\$ 120.00");
    print("103 - Brinquedo Mordedor ....... R\$ 18.50");
    print("104 - Shampoo Canino ........... R\$ 34.99");
    print("------------------------------");
    print("1 - Adicionar item");
    print("0 - Voltar");

    int opcao = int.tryParse(stdin.readLineSync() ?? "") ?? -1;

    if (opcao == 0) {
      aberto = false;
    } else if (opcao == 1) {
      adicionarAoCarrinho(itens, valores);
    }
  }
}

// ================= SERVIÇOS =================

void menuServicos(List<String> itens, List<double> valores) {
  bool aberto = true;

  while (aberto) {
    limparConsole();

    print("===== SERVIÇOS =====");
    print("201 - Consulta Veterinária ..... R\$ 80.00");
    print("202 - Vacinação ................ R\$ 65.00");
    print("203 - Banho Completo ........... R\$ 50.00");
    print("------------------------------");
    print("1 - Adicionar serviço");
    print("0 - Voltar");

    int opcao = int.tryParse(stdin.readLineSync() ?? "") ?? -1;

    if (opcao == 0) {
      aberto = false;
    } else if (opcao == 1) {
      adicionarAoCarrinho(itens, valores);
    }
  }
}

// ================= ADICIONAR ITEM =================

void adicionarAoCarrinho(List<String> itens, List<double> valores) {
  if (itens.length >= 3) {
    print("Carrinho cheio! Máximo de 3 itens.");
    stdin.readLineSync();
    return;
  }

  print("Digite o código desejado:");

  int codigo = int.tryParse(stdin.readLineSync() ?? "") ?? -1;

  switch (codigo) {
    case 101:
      itens.add("Coleira Premium");
      valores.add(45.90);
      break;

    case 102:
      itens.add("Caminha Pet");
      valores.add(120.00);
      break;

    case 103:
      itens.add("Brinquedo Mordedor");
      valores.add(18.50);
      break;

    case 104:
      itens.add("Shampoo Canino");
      valores.add(34.99);
      break;

    case 201:
      itens.add("Consulta Veterinária");
      valores.add(80.00);
      break;

    case 202:
      itens.add("Vacinação");
      valores.add(65.00);
      break;

    case 203:
      itens.add("Banho Completo");
      valores.add(50.00);
      break;

    default:
      print("Código inválido!");
      stdin.readLineSync();
      return;
  }

  print("Item adicionado com sucesso!");
  stdin.readLineSync();
}

// ================= CARRINHO =================

void mostrarCarrinho(List<String> itens, List<double> valores) {
  limparConsole();

  print("===== CARRINHO =====");

  if (itens.isEmpty) {
    print("Carrinho vazio.");
  } else {
    for (int i = 0; i < itens.length; i++) {
      print("${i + 1} - ${itens[i]}");
      print("R\$ ${valores[i].toStringAsFixed(2)}");
      print("-------------------");
    }
  }

  print("Pressione ENTER para voltar.");
  stdin.readLineSync();
}

// ================= FINALIZAR PEDIDO =================

bool concluirPedido(String nome, List<String> itens, List<double> valores) {
  limparConsole();

  if (itens.isEmpty) {
    print("Seu carrinho está vazio.");
    stdin.readLineSync();
    return false;
  }

  double total = 0;

  for (double valor in valores) {
    total += valor;
  }

  print("===== PAGAMENTO =====");
  print("Total da compra: R\$ ${total.toStringAsFixed(2)}");

  print("Forma de pagamento:");
  print("1 - PIX");
  print("2 - Cartão");

  int pagamento = int.tryParse(stdin.readLineSync() ?? "") ?? 0;

  double valorFinal = total;

  if (pagamento == 1) {
    valorFinal = total * 0.95;
    print("Desconto PIX aplicado!");
  }

  print("\nCompra concluída!");
  print("Obrigado pela preferência, $nome");
  print("Valor pago: R\$ ${valorFinal.toStringAsFixed(2)}");

  totalPedidos++;
  faturamentoTotal += valorFinal;

  print("\nPressione ENTER para finalizar.");
  stdin.readLineSync();

  return true;
}

// ================= FECHAMENTO =================

void fechamentoSistema() {
  limparConsole();

  print("===== FECHAMENTO =====");
  print("Sistema encerrado.");
  print("Total de pedidos: $totalPedidos");
  print("Faturamento do dia: R\$ ${faturamentoTotal.toStringAsFixed(2)}");
}
