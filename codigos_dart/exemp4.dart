import 'dart:io';
import 'dart:math';

void main() {
  var vogais = [];
  List notas = [7.5, 10, 6.7, 8.0, 9.0];
  List<String> nomes = ["Fábio", "Maria", "João", "Ana"];
  print(notas);
  print(notas[2]);
  print(notas.first);
  print(notas.last);
  for (int i = 0; i < notas.length; i++) {
    print("Nota $(i+1): ${notas[i]}");
  }
  for (var aux in notas) {
    print("Nota: $aux");
  }
  notas.forEach(print);
  print(notas.isEmpty);
  print(vogais.isNotEmpty);
  //Ordenar os valores da lista
  List numeros = [5, 2, 9, 1, 3];
  print(numeros);
  numeros.sort((a, b) => a.compareTo(b));
  print(nomes);
  nomes.sort((a, b) => b.compareTo(a));
  print(nomes);
  nomes.shuffle();
  print(nomes);
  //analisar se um elemento existe na lista
  print(nomes.contains("Fábio"));
  print(nomes.contains( "Carlos"));
  //Inserindo valores na lista
  print(vogais);
  vogais.add("a");
  print(vogais);
  vogais.addAll(["e", "i", "o", "u"]);
  print(vogais);
  vogais.insert(1, "Y");
  print(vogais);
  List numeros2 = [];
  for (int i = 1; i <= 5; i++) {
  int valor = int.parse(stdin.readLineSync()!);
  numeros2.add(valor);
  }
  print(numeros2);
  //Removendo elementos da lista
  print(vogais);
  vogais.remove("Y");
  print(vogais);
  vogais.removeAt(2);
  print(vogais);
}