import 'dart:io';
import 'dart:math';

void main() {

    int countDentro = 0;
    int countFora = 0;
    for (int i = 0; i < 10; i++) {
        print("Digite o número $i: ");
        int num = int.parse(stdin.readLineSync()!);
        if (num >= 1 && num <= 20) {
            countDentro++;
        } else {
            countFora++;
        }
    }
    print("Quantidade de números dentro do intervalo [1,20]: $countDentro");
    print("Quantidade de números fora do intervalo [1,20]: $countFora");
}