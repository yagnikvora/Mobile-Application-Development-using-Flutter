import 'dart:io';

void main() {
  stdout.write("Enter number : ");
  int a = int.parse(stdin.readLineSync()!);

  for (int i = 2; i < a; i++) {
    if (a % i == 0) {
      stdout.write("$a is not prime");
      return;
    }
  }
  stdout.write("$a is prime");

}

