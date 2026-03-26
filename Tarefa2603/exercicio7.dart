import dart:io;
import dart:math;
void main(){
    int num;
    print("Digite um número inteiro: \n");
    num = int.parse(stdin.readLineSync()!);
    if(num % 2 == 0){
        print("O número $num é par.");
    } else {
        print("O número $num não é par.");
    }
    if(num % 3 == 0){
        print("O número $num é divisivel por 3.");
    } else {
        print("O número $num não é divisivel por 3.");
    }
}