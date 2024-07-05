import 'dart:io';

void main() {
  stdout.write("Enter number-1 : ");
  double a = double.parse(stdin.readLineSync()!);
  stdout.write("Enter number-2 : ");
  double b = double.parse(stdin.readLineSync()!);
  stdout.write("Enter operation : ");
  String op = stdin.readLineSync()!;
  double ans = 0;
  //Using if
  if (op == '+') ans = a + b;
  if (op == '-') ans = a - b;
  if (op == '*') ans = a * b;
  if (op == '/') ans = a / b;

  //Uding if...elseif
  // if (op == '+')
  //   ans = a + b;
  // else if (op == '-')
  //   ans = a - b;
  // else if (op == '*')
  //   ans = a * b;
  // else if (op == '/') ans = a / b;

  //Using Switch..case

  // switch (op) {
  //   case '+':
  //     ans = a + b;
  //     break;
  //   case '-':
  //     ans = a - b;
  //     break;
  //   case '*':
  //     ans = a * b;
  //     break;
  //   case '/':
  //     ans = a / b;
  //     break;
  // }

  stdout.write("Answer : $ans");
}
