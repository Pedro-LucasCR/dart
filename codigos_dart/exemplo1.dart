import 'dart:io';
import 'dart:math';

void main(){
    
    String curso = "Dart";
    int idade = 30;
    double altura = 1.75;
    print("O curso é: $curso");
    print("A idade é: $idade");
    print("A altura é: $altura");

    var curso2 = "Flutter";
    var idade2 = 25;
    print("O curso é: $curso2");
    print("A idade é: $idade2");

    // idade = "Técnico em Informática";
    // idade2 = "Sistemas de Informação";

    var idade3;
    idade3 = 50;
    print("A idade 3 é: $idade3");
    idade3 = "Tecnico em Informática";
    print("A idade 3 é: $idade3");

    dynamic idade4;
    idade4 = 40;
    print("A idade é: $idade4");
    idade4 = "Quarenta";
    print("A idade é: $idade4");

    String meuNome = "Pedro";
    int minhaIdade = 35;
    print("Meu nome é: $meuNome e minha idade é: $minhaIdade");

    String nomeCompleto = "Pedro Lucas";
    print("Meu nome é: $nomeCompleto");
    print(nomeCompleto.toUpperCase());
    print(nomeCompleto.toLowerCase());
    print(nomeCompleto.length);

    String? TelResidencial;
    print(TelResidencial);
    print(TelResidencial?? "Telefone não informado");
    String? TelResidencial2;
    String? TelResidencial3 = "123456789";
    print(TelResidencial2 ?? "Telefone não informado");

    print(pow(5, 2));
    print(sqrt(81));

    //Constantes
    const double pi = 3.14;
    print(pi);
    // pi = 2.75; // Isso causará um erro, pois pi é uma constante

    print("Digite um valor:");
    String valor = stdin.readLineSync()!;
    print("O valor digitado foi: $valor");

    print("Digite um número do telefone residencial:");
    String? telefoneResidencial = stdin.readLineSync();
    
    print("Digite outro valor:");
    String valor2 = stdin.readLineSync()!;
    print(int.parse(valor2) + 2);

    print("Digite outro valor:");
    int valor3 = int.parse(stdin.readLineSync()!);
    print("O valor digitado foi: ${valor3 + 2}");

}