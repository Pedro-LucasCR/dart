import "dart:io";
import "dart:math";
void main(){
    String num;

    print("Digite um número:");
    num = stdin.readLineSync()!;
    print("O número digitado foi: $num, o seu sucessor é: ${int.parse(num) + 1} e o seu antecessor é: ${int.parse(num) - 1}");
}