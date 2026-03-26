import "dart:io";
import "dart:math";
void main(){
    
    
    print("Sejam bem vindos a loja Cuidapet! Em breve teremos um sistema de autoatendimento.");

    String endereco = "São Paulo, Rua Fernandes Vieira, 157";
    String telefone = "(11) 4002-8922";
    print("A seguir nossa Localização e Número de Telefone: \n");
    print("Endereço da loja: $endereco");
    print("Telefone da loja: $telefone");

    String nome;
    print("Digite seu nome: \n");
    nome = stdin.readLineSync()!;
    print("Prezado(a), $nome! Seja bem-vindo(a) à nossa loja Cuidapet!\n");
    print("Oferecemos em nossa loja produtos e serviços para seu PET. Para venda de produtos, procure o colaborador Junior e, para serviços como banho ou tosa, procure o colaborador Neto. Obrigado e esperamos que tenha uma ótima experiência em nossa loja!");

    int opcao;
    print("Digite o número da opção desejada: \n");
    print("1 - Ver ofertas de Produtos");
    print("2 - Ver ofertas de Serviços");
    print("3 - Ver ofertas de Roupas");
    print("4 - Ver novos serviços");
    print("5 - Ver promoção 1");
    print("6 - Ver promoção 2");

    opcao = int.parse(stdin.readLineSync()!);

    switch(opcao){
        case 1:
            print("Ração Royal Canin Indor 7,5kg com o valor promocional de R\$ 280,00");
            break;
        case 2:
            print("Banho e tosa na promoção pelo preço do banho R\$ 54,00");
            break;
        case 3:
            print("Ver ofertas de roupas");
            print("Roupas em ofertas - Capa de chuva R\$ 59,99");
             break;
        case 4:
            print("Ver novos serviços");
            print("Novos serviços oferecidos: Hidratação de pelo R\$ 39,99 | Tosa higiênica R\$ 10,99 | Tingimento dos pelo R\$ 55,99");
             break;
        case 5:
            print("Promoção 1: 10% de desconto");
            print("Compre um saco de 15kg de ração (R\$ 345,99) e ganhe 10% de desconto no banho");
            break;
        case 6:
            print("Promoção 2: 20% de desconto");
            print("Compre um banho com tosa higiênica e hidratação e ganhe 20% de desconto no valor total");
            break;
                default:
            print("Opção inválida, por favor selecione uma opção válida.");
    }
}