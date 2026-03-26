import dart:io;
import dart:math;
void main(){
    int num;
    print("Digite um número inteiro: \n");
    num = int.parse(stdin.readLineSync()!);
    if(num % 2 == 0){
        print("O número $num é par.");
    } else {
        print("O número $num é ímpar.");
    }
    if(num > 0){
        print("O número $num é positivo.");
    } else if(num < 0){
        print("O número $num é negativo.");
    } else {
        print("O número é zero.");
    }
}