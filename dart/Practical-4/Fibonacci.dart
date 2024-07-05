import 'dart:io';

void main() {
  stdout.write("Enter No. of steps : ");
  int n = int.parse(stdin.readLineSync()!);

  fibo(n);
}

void fibo(int n) {
  stdout.write("0,1,");
  int a = 0, b = 1,res=0;
  for (int i = 2; i < n; i++) {
    res = a+b;
    a = b;
    b = res;
    stdout.write("$res,");
  }
}
