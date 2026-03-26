import "dart:io";
import "dart:math";
void main(){

    print("Digite um número real: \n");
    double numeroReal = double.parse(stdin.readLineSync()!);
    double quintaParte = numeroReal / 5;
    print("A quinta parte do número real digitado é: $quintaParte");
    
}