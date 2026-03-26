import dart:io;
import dart:math;
void main(){
    double num;
    double num2;
    print("Digite um número: \n");
    num = double.parse(stdin.readLineSync()!);
    print("Digite outro número: \n");
    num2 = double.parse(stdin.readLineSync()!);

    if(num > num2){
        print("O número $num é maior que o número $num2");
    } else if(num < num2){
        print("O número $num é menor que o número $num2");
    } else {
        print("Os números são iguais.");
    }
}