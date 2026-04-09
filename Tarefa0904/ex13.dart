import 'dart:io';
import 'dart:math';

void main() {
  int soma = 0;
  for (int i = 0; i < 5; i++) {
    print("Digite um número:");
    int num = int.parse(stdin.readLineSync()!);
    soma += num;
  }
  double media = soma / 5;
  print("A soma dos números é: $soma");
  print("A média dos números é: $media");
}