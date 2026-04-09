import 'dart:io';
import 'dart:math';

void main() {
    print("Digite um número inteiro:");
    int num = int.parse(stdin.readLineSync()!);
    bool isPrimo = true;

    if (num <= 1) {
        isPrimo = false;
    } else {
        for (int i = 2; i <= num ~/ 2; i++) {
            if (num % i == 0) {
                isPrimo = false;
                break;
            }
        }
    }

    if (isPrimo) {
        print("$num é um número primo.");
    } else {
        print("$num não é um número primo.");
    }
}