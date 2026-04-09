import 'dart:io';
import 'dart:math';

void main() {
    
    int soma = 0;
    for (int i = 230; i <= 520; i++) {
        if (i % 2 == 0) {
            soma += i;
        }
    }
    print("A soma dos números pares de 230 a 520 é: $soma");

}