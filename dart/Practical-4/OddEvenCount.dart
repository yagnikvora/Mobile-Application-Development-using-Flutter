import 'dart:io';

void main() {
  stdout.write("Enter size of array : ");
  int n = int.parse(stdin.readLineSync()!);

  List<int> arr = List<int>.filled(n, 0);

  for (int i = 0; i < arr.length; i++) {
    arr[i] = int.parse(stdin.readLineSync()!);
  }
  check(arr);
}

void check(List<int> a) {
  int ec = 0, oc = 0;
  for (int i = 0; i < a.length; i++) {
    if (a[i] % 2 == 0)
      ec++;
    else
      oc++;
  }
  stdout.writeln("Array is : $a");
  stdout.writeln("Even Count : $ec");
  stdout.write("Odd Count : $oc");
}
