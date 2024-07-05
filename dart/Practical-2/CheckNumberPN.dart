import 'dart:io';

void main() {
  stdout.write("Enter number : ");
  int a = int.parse(stdin.readLineSync()!);
  
  if(a < 0 )
      stdout.write("Negetive Number");
  else
      stdout.write("Positive Number");
}
