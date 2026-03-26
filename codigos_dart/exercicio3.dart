import "dart:io";
import "dart:math";

void main(){
   /* print("Digite um número:");
    String num = stdin.readLineSync()!;
    print("O numero digitado foi: $num a média arítmetica é: ${int.parse(num) / 2} }"); */

    /*
    int idade;
    print("Digite a sua idade:");
    idade = int.parse(stdin.readLineSync()!);

    if(idade >= 18){
        print("Você é maior de idade");
    } else {
        print("Você é menor de idade");
    }

    //Operador Ternário
    print(idade >= 18 ? "Você é maior de idade" : "Você é menor de idade");

    int valor;
    print("Digite um valor:");
    valor = int.parse(stdin.readLineSync()!);
    printf("O valor é positivo.");
     if(valor < 0){
        printf("O valor é negativo.");
     } else if(valor == 0){
        printf("O valor é zero.");
     }

     int diaSemana;
        print("Digite um número de 1 a 7 para o dia da semana:");
        diaSemana = int.parse(stdin.readLineSync()!);
        switch(diaSemana){
            case 1:
                print("Domingo");
                break;
            case 2:
                print("Segunda-feira");
                break;
            case 3:
                print("Terça-feira");
                break;
            case 4:
                print("Quarta-feira");
                break;
            case 5:
                print("Quinta-feira");
                break;
            case 6:
                print("Sexta-feira");
                break;
            case 7:
                print("Sábado");
                break;
            default:
                print("Número inválido, digite um número de 1 a 7.");
        }
        */

        //Comandos de repetição
        for(int i = 1; i <= 10; i++){
            print(i);
        }

        int aux = 10;
        while(aux > 0){
            print(aux);
            aux--;
        }

        int aux2 = 10;
        do{
            print(aux2);
            aux2--;
        } while(aux2 > 0);

        int num, soma;
        soma = 0;
        print("Digite um número:");
        num = int.parse(stdin.readLineSync()!);
        while(num != 0){
            soma = soma + num;
            print("Digite um valor:");
            num = int.parse(stdin.readLineSync()!);
        }
        print("A soma dos valores digitados é: $soma");
}