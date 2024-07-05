import 'dart:io';

void main() {
  stdout.write("Enter number-1 : ");
  int a = int.parse(stdin.readLineSync()!);
  stdout.write("Enter number-2 : ");
  int b = int.parse(stdin.readLineSync()!);
  stdout.write("Enter number-3 : ");
  int c = int.parse(stdin.readLineSync()!);

  int max = (a > b && a > c)
      ? a
      : (b > c)
          ? b
          : c;

  stdout.write("Max : $max ");
}
