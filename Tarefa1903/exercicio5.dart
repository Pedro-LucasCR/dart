import "dart:io";
import "dart:math";
void main(){

    print("Digite um número inteiro: \n");
    int numeroInteiro = int.parse(stdin.readLineSync()!);
    print("O número inteiro digitado foi: $numeroInteiro");
    print("Digite um número real: \n");
    double numeroReal = double.parse(stdin.readLineSync()!);
    print("O número real digitado foi: $numeroReal");
    
}