import 'dart:io';
import 'dart:math';

void main() {
  print("Digite o primeiro número:");
  double num1 = double.parse(stdin.readLineSync()!);
  print("Digite o segundo número:");
  double num2 = double.parse(stdin.readLineSync()!);

  double menorValor = encontrarMenorValor(num1, num2);
  print("O menor valor é: $menorValor");
}

double encontrarMenorValor(double num1, double num2) {
  return min(num1, num2);


// int somatorio(int n) {
// int soma = 0;
// for (int i = 1; i <= n; i++) {
// soma += i;
// }
// return soma;
// }

// void main() {
// print("Digite um número:");
// String? input = stdin.readLineSync();

// int numero = int.parse(input!);
// int resultado = somatorio(numero);
// print("O somatório de 1 até $numero é: $resultado");
// }


}