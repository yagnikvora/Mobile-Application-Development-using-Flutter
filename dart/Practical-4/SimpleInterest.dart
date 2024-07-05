import 'dart:io';

void main() {
  stdout.write("Enter Amount : ");
  double p = double.parse(stdin.readLineSync()!);
  stdout.write("Enter Rate  : ");
  double r = double.parse(stdin.readLineSync()!);
  stdout.write("Enter Duration : ");
  double n = double.parse(stdin.readLineSync()!);
  double interest = calculateInterest(p, r, n);
  stdout.write("Interst is : $interest ");
}
double calculateInterest(double p, double r, double n) {
  return ((p * r * n) / 100);
}
