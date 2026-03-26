import dart:io;
import dart:math;
void main(){
    double num;
    double num2;
    print("Digite um número: \n");
    num = double.parse(stdin.readLineSync()!);
    print("Digite outro número: \n");
    num2 = double.parse(stdin.readLineSync()!);

    if(num == num2){
        print("Os números são iguais.");
    } else {
        print("Os números $num e $num2 são diferentes.");
    }
}