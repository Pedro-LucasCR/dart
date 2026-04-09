import 'dart:io';
import 'dart:math';

void main() {
    print("Digite um número inteiro:");
    int num = int.parse(stdin.readLineSync()!);
    int fatorial = 1;

    for (int i = 1; i <= num; i++) {
        fatorial *= i;
    }

    print("O fatorial de $num é: $fatorial");
}