import dart:io;
import dart:math;
void main(){
    double dinheiro_sobrando;
    print("Digite o valor do dinheiro que você tenha sobrando: \n");
    dinheiro_sobrando = double.parse(stdin.readLineSync()!);
    if(dinheiro_sobrando >= 10){
        print("Vá ao cinema.");
    } else {
        print("Fique em casa assistindo TV.");
    }
}