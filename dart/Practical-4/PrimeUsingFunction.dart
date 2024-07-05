import 'dart:io';

void main() {
  stdout.write("Enter number : ");
  int a = int.parse(stdin.readLineSync()!);

  int p = check(a);

  if (p == 1)
    stdout.write("$a is prime");
  else
    stdout.write("$a is not prime");
}

int check(int a) {
  for (int i = 2; i < a; i++) {
    if (a % i == 0) return 0;
  }
  return 1;
}
