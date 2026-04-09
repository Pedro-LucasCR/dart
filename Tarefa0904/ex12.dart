import 'dart:io';
import 'dart:math';

void main() {
  int maior;
  for (int i = 0; i < 5; i++) {
    print("Digite um número:");
    int num = int.parse(stdin.readLineSync()!);
    if (i == 0) {
      maior = num;
    } else if (num > maior) {
      maior = num;
    }
  }
  print("O maior número é: $maior");
}