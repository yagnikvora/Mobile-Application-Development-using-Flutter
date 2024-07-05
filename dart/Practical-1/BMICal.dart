import 'dart:io';

void main() {
  stdout.write("Enter weight in pound : ");
  double w = double.parse(stdin.readLineSync()!);
  stdout.write("Enter height inch : ");
  double h = double.parse(stdin.readLineSync()!);

  double k = w * 0.453;
  double m = h * 0.254;
  double bmi = k / (m * m);
  stdout.write("BMI : $bmi");
}
