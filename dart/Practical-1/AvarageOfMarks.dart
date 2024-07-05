import 'dart:io';

void main() {
  stdout.writeln("Enter Marks of five subjects ");
  int m1 = int.parse(stdin.readLineSync()!);
  int m2 = int.parse(stdin.readLineSync()!);
  int m3 = int.parse(stdin.readLineSync()!);
  int m4 = int.parse(stdin.readLineSync()!);
  int m5 = int.parse(stdin.readLineSync()!);

  stdout.write(
      "Avarage of marks $m1,$m2,$m3,$m4,$m5 is ${(m1 + m2 + m3 + m4 + m5) / 5}");
}
