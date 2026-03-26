import dart:io;
import dart:math;
void main(){
    int num1;
    int num2;
    int num3;
    print("Digite o primeiro número: \n");
    num1 = int.parse(stdin.readLineSync()!);
    print("Digite o segundo número: \n");
    num2 = int.parse(stdin.readLineSync()!);
    print("Digite o terceiro número: \n");
    num3 = int.parse(stdin.readLineSync()!);
    
    if(num1 <= num2 && num1 <= num3){
        if(num2 <= num3){
            print("Os números em ordem crescente são: $num1, $num2, $num3");
        } else {
            print("Os números em ordem crescente são: $num1, $num3, $num2");
        }
    } else if(num2 <= num1 && num2 <= num3){
        if(num1 <= num3){
            print("Os números em ordem crescente são: $num2, $num1, $num3");
        } else {
            print("Os números em ordem crescente são: $num2, $num3, $num1");
        }
    } else {
        if(num1 <= num2){
            print("Os números em ordem crescente são: $num3, $num1, $num2");
        } else {
            print("Os números em ordem crescente são: $num3, $num2, $num1");
        }
    }

}