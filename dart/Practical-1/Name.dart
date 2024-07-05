import 'dart:io';

void main() {
  stdout.write("Enter name : ");

  String name = stdin.readLineSync()!;
  stdout.write("Name : $name");
}
