import 'dart:io';

void main() {
  stdout.write("Enter number-1 : ");
  int a = int.parse(stdin.readLineSync()!);
  stdout.write("Enter number-2 : ");
  int b = int.parse(stdin.readLineSync()!);
  stdout.write("Enter number-3 : ");
  int c = int.parse(stdin.readLineSync()!);

  if (a > b && a > c)
    stdout.write("Max : $a");
  else if (b > c)
    stdout.write("Max : $b");
  else
    stdout.write("Max : $c");
}
