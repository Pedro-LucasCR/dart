import 'dart:io';
import 'dart:math';

void main() {
    print("Digite o primeiro número:");
    int num1 = int.parse(stdin.readLineSync()!);
    print("Digite o segundo número:");
    int num2 = int.parse(stdin.readLineSync()!);

    print("Números inteiros entre $num1 e $num2:");
    for (int i = num1 + 1; i < num2; i++) {
        print(i);
    }
}