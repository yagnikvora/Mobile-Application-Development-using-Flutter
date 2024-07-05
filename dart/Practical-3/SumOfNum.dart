import 'dart:io';

void main() {
  stdout.write("Enter number : ");
  int n = int.parse(stdin.readLineSync()!);
  int pen = 0, non = 0;
  while (n != 0) {
    if (n > 0 && n % 2 == 0) {
      pen += n;
    }
    if (n < 0 && n % 2 != 0) {
      non += n;
    }
    stdout.write("Enter number : ");
    n = int.parse(stdin.readLineSync()!);
  }

  stdout.write("Sum of positive Even No. $pen \n");
  stdout.write("Sum of Negative Odd No. $non");
}
