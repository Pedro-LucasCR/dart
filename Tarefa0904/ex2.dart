import "dart:io";
import "dart:math";

void main() {
    int soma = 0;
    int numero;
    for (int i = 0; i < 10; i++) {
        print("Digite um número: ");
        numero = int.parse(stdin.readLineSync()!);
        if (numero % 2 == 1) {
            soma += numero;
        }
    }
    print("A soma dos números ímpares é: $soma");
}