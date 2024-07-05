import 'dart:io';

void main() {
  stdout.write("Enter Temperature in Fehrenhit : ");
  double f = double.parse(stdin.readLineSync()!);
  stdout.write("Celsius ${((f - 32) * 5) / 9}");
}
