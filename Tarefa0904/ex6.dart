import "dart:io";
import "dart:math";

void main() {
    
    double soma = 0;
    int count = 0;
    while (true) {
        print("Digite um número (0 para terminar):");
        int numero = int.parse(stdin.readLineSync()!);
        if (numero == 0) {
            break;
        }
        if (numero % 2 == 0) {
            soma += numero;
            count++;
        }
    }
    if (count > 0) {
        double media = soma / count;
        print("A média dos números pares é: $media");
    } else {
        print("Nenhum número par foi digitado.");
    }

}