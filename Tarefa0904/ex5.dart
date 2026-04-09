import 'dart:io';
import 'dart:math';

void main() {

    int countNegativos = 0;
    for(int i = 0; i < 5; i++) {
        print("Digite um número:");
        int numero = int.parse(stdin.readLineSync()!);
        if (numero < 0) {
            countNegativos++;
        }
    }
    print("A quantidade de números negativos é: $countNegativos");
}