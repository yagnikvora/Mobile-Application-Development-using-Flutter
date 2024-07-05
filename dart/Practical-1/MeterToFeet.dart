import 'dart:io';

void main() {
  stdout.write("Enter Maters : ");
  int m = int.parse(stdin.readLineSync()!);

  stdout.write("Feet : ${m * 3.28}");
}
