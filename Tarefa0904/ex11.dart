import 'dart:io';
import 'dart:math';

void main() {
    int maior;
    int menor;
    for (int i = 0; i < 3; i++) {
        print("Digite a idade de uma pessoa:");
        int idade = int.parse(stdin.readLineSync()!);
        if (idade > maior) {
            maior = idade;
        }
        if (idade < menor) {
            menor = idade;
        }
    }
    print("A maior idade é: $maior");
    print("A menor idade é: $menor");
}