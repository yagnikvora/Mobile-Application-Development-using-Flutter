import 'dart:io';

void main() {
  stdout.write("Enter A : ");
  int a = int.parse(stdin.readLineSync()!);
  stdout.write("Enter B : ");
  int b = int.parse(stdin.readLineSync()!);
  int max = maximum(a, b);

  stdout.write("Max is $max");
}

int maximum(int a, int b) {
  if (a > b)
    return a;
  else
    return b;
}
