import 'dart:io';

void main() {
  stdout.write("Enter a String : ");
  String str = stdin.readLineSync()!;

  String revStr = str.split('').reversed.join();

  stdout.write("Original String is $str, Reversed Sting is $revStr");
}
