import 'dart:io';
import 'dart:math';

void main() {

    int a = 1;
    int b = 1;
    print(a);
    print(b);
    for(int i = 3; i <= 15; i++) {
        int c = a + b;
        print(c);
        a = b;
        b = c;
    }
}