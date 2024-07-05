import 'dart:io';

void main() {
  stdout.write("Enter number : ");
  int a = int.parse(stdin.readLineSync()!);

  int temp = a;
  int digit = 0;
  int rev = 0;
  while (temp > 0) {
    digit = temp % 10;
    rev = rev * 10 + digit;
    temp = temp ~/ 10;
  }
  stdout.write("Original No. $a , Reverse No. $rev");

}
