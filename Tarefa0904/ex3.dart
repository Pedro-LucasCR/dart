import 'dart:io';
import 'dart:math';

void main() {
    for(int i = 0; i < 5; i++) {
        print("Digite um número:");
        int numero = int.parse(stdin.readLineSync()!);
        print("A raiz quadrada de $numero é ${sqrt(numero)}");
    }
}