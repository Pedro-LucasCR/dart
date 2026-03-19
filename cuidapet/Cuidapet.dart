import "dart:io";
import "dart:math";
void main(){
    
    
    print("Sejam bem vindos a loja Cuidapet! Em breve teremos um sistema de autoatendimento.");

    String endereco = "São Paulo, Rua Fernandes Vieira, 157";
    String telefone = "(11) 4002-8922";
    print("A seguir nossa Localização e Número de Telefone: \n");
    print("Endereço da loja: $endereco");
    print("Telefone da loja: $telefone");

    String nome;
    print("Digite seu nome: \n");
    nome = stdin.readLineSync()!;
    print("Prezado(a), $nome! Seja bem-vindo(a) à nossa loja Cuidapet!\n");
    print("Oferecemos em nossa loja produtos e serviços para seu PET. Para venda de produtos, procure o colaborador Junior e, para serviços como banho ou tosa, procure o colaborador Neto. Obrigado e esperamos que tenha uma ótima experiência em nossa loja!");
}