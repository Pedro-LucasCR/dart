import "dart:io";
import "dart:math";

void main() {
int maior = -999999999;
    for (int i = 0; i<3; i++){
        print("Digite um número: ");
        int numero = int.parse(stdin.readLineSync()!);
        if(numero > maior){
        maior = numero;
        }
    }
        print("O maior número é: $maior");

}
