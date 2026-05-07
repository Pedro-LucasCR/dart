import 'dart:io';

void main() {
  int dias;
  double diaria, seguro;
  print('Digite a quantidade de dias:');
  dias = int.parse(stdin.readLineSync()!);
  print('Digite o valor da diária:');
  diaria = double.parse(stdin.readLineSync()!);
  print('Digite o valor do seguro:');
  seguro = double.parse(stdin.readLineSync()!);

  double valorTotal = calcularValorTotal(dias, diaria, seguro);
  print('O valor total do aluguel é: R\$ ${valorTotal.toStringAsFixed(2)}');

  imprimir();
  print(obterMensagem());
  List notas = [5.5, 4.3, 7.5, 8.0, 3.5, 9.0];
  verificaTotalAprovacao(notas);
}

//função com retorno e com parâmetros
double calcularValorTotal(int dias, double diaria, double seguro) {
    double valorTotal = (dias * diaria) + seguro;
    return valorTotal;
 
}

//funcao sem retorno e com parâmetros
void verificaTotalAprovacao(List notas) {
  int totalReprovacao = 0;
  int totalAprovacao = 0;
  for (int i = 0; i < notas.length; i++) {
    if (notas[i] < 6.0) {
      totalReprovacao++;
    } else {
      totalAprovacao++;
    }
  }
  print('Total de reprovados: $totalReprovacao');
  print('Total de aprovados: $totalAprovacao');
}

//função sem retorno e sem parâmetros
void imprimir() {
  print('Olá, mundo!');
}

//função com retorno e sem parâmetros
String obterMensagem() {
  return 'Olá, mundo! Estou estudando Dart.';
}