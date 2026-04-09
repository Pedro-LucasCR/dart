import 'dart:io';
import 'dart:math';

void main() {
    int pares = 0;
    int impares = 0;

    for (int i = 0; i < 10; i++) {
        print("Digite um número inteiro:");
        int num = int.parse(stdin.readLineSync()!);
        if (num % 2 == 0) {
            pares++;
        } else {
            impares++;
        }
    }

    print("Quantidade de números pares: $pares");
    print("Quantidade de números impares: $impares");
}