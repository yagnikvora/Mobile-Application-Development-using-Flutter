import 'dart:io';

void main() {
  stdout.write("Enter Number : ");
  int a = int.parse(stdin.readLineSync()!);

  int fact = 1;

  for (int i = 1; i <= a; i++) {
    fact *= i;
  }

  stdout.write("Factorial : $fact");
}
