import 'dart:io';

void main() {
  stdout.write("Enter size of list : ");
  int n = int.parse(stdin.readLineSync()!);

  List<int> arr = List<int>.filled(n, 0);

  for (int i = 0; i < arr.length; i++) {
    stdout.write("Enter $i : ");
    arr[i] = int.parse(stdin.readLineSync()!);
  }

  stdout.writeln("Unsorted List: $arr");
  arr.sort();
  stdout.write("Sorted List: $arr");
}
