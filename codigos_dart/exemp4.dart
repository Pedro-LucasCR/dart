void main(){
Funcionario f1 = Funcionario('João', 3000.0);
Funcionario f2 = Funcionario('Maria', 3500.0, '(35)99876-9080');
f1.mostrarDados();
f2.mostrarDados();
}

class Funcionario {
  String nome;
  double salario;
  String? telefone;

  Funcionario(this.nome, this.salario, [this.telefone]);

  void mostrarDados() {
    print('Nome: $nome');
    print('Salário: R\$ $salario');
    if (telefone != null) {
      print('Telefone: $telefone');
    }
  }
}