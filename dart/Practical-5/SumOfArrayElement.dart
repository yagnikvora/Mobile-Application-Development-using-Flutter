import 'dart:io';

void main() {
  stdout.write("Enter size of list : ");
  int n = int.parse(stdin.readLineSync()!);

  List<int> arr = List<int>.filled(n, 0);

  for (int i = 0; i < arr.length; i++) {
    stdout.write("Enter ${i + 1} : ");
    arr[i] = int.parse(stdin.readLineSync()!);
  }

  int sum = arr
      .where((element) => element % 3 == 0 || element % 5 == 0)
      .reduce((value, element) => value + element);

  stdout.write("Sum is : $sum");
}
