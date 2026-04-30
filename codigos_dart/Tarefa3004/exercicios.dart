import "dart:io";
import "dart:math";

void main(){
  List numeros = [];
  for (int i = 0; i < 5; i++){
    if(i % 2 == 0){
      numeros.add(1);
    } else {
      numeros.add(0);
    }
  }
  print(numeros);

}