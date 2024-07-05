import 'dart:io';

void main() {
  stdout.writeln("Enter Marks of five subjects ");
  int m1 = int.parse(stdin.readLineSync()!);
  int m2 = int.parse(stdin.readLineSync()!);
  int m3 = int.parse(stdin.readLineSync()!);
  int m4 = int.parse(stdin.readLineSync()!);
  int m5 = int.parse(stdin.readLineSync()!);

  double per = (m1 + m2 + m3 + m4 + m5) / 5;
  if (per < 35)
    stdout.write("Fail");
  else if (per >= 35 && per < 45)
    stdout.write("Pass");
  else if (per >= 45 && per < 60)
    stdout.write("Second");
  else if (per >= 60 && per < 70)
    stdout.write("First");
  else if (per >= 35 && per < 45) stdout.write("Distinction");
}
