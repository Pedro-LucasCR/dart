import "dart:io";
import "dart:math";
void main(){

    String num;
    String num2;
    String resultado;
    print("Digite um número:");
    num = stdin.readLineSync()!;

    print("Diigite outro número:");
    num2 = stdin.readLineSync()!;

    resultado = (int.parse(num) + int.parse(num2)).toString();
    print("A soma dos números $num + $num2 é: $resultado");

}