import "dart:io";
import "dart:math";

void main(){
    print("Digite um número:");
    String num = stdin.readLineSync()!;
    print("O numero digitado foi: $num a média arítmetica é: ${int.parse(num) / 2} }");
}