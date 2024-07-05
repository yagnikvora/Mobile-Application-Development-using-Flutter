import 'dart:io';

void main() {
  stdout.write("Enter number-1 : ");
  double a = double.parse(stdin.readLineSync()!);
  stdout.write("Enter number-2 : ");
  double b = double.parse(stdin.readLineSync()!);
  stdout.write("Enter operation : ");
  String op = stdin.readLineSync()!;
  double ans = 0;

  switch (op) {
    case '+':
      ans = a + b;
      break;
    case '-':
      ans = a - b;
      break;
    case '*':
      ans = a * b;
      break;
    case '/':
      ans = a / b;
      break;
    default:
      stdout.write("Enter valid operation");
  }

  stdout.write("Answer : $ans");
}
