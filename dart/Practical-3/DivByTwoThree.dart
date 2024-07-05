import 'dart:io';

void main() {
  stdout.write("Enter number-1 : ");
  int start = int.parse(stdin.readLineSync()!);
  stdout.write("Enter number-2 : ");
  int end = int.parse(stdin.readLineSync()!);

  for (int i = start; i <= end; i++) {
    if (i % 2 == 0 && i % 3 != 0) stdout.write("$i,");
  }
}
