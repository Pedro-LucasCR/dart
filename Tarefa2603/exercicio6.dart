import dart:io;
import dart:math;
void main(){
    int num;
    print("Digite um número inteiro: \n");
    num = int.parse(stdin.readLineSync()!);
    if(num % 7 == 0){
        print("O número $num é múltiplo de 7");
    } else {
        print("O número $num não é múltiplo de 7");
    }
}