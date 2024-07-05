import 'dart:io';

void main() {
  stdout.write("Enter number : ");
  int a = int.parse(stdin.readLineSync()!);
  bool flag = true;
  for (int i = 2; i < a; i++) {
    if (a % i == 0) {
      flag = false;
    }
  }
  if(flag){
    stdout.write("$a is prime number");
  }else{
      stdout.write("$a is not prime number");
  }
}
