import 'dart:io';

void main() {
  stdout.write("Enter size of first list : ");
  int n1 = int.parse(stdin.readLineSync()!);

  List<int> arr1 = List<int>.filled(n1, 0);

  for (int i = 0; i < arr1.length; i++) {
    stdout.write("Enter $i : ");
    arr1[i] = int.parse(stdin.readLineSync()!);
  }

  stdout.write("Enter size of second list : ");
  int n2 = int.parse(stdin.readLineSync()!);

  List<int> arr2 = List<int>.filled(n2, 0);

  for (int i = 0; i < arr2.length; i++) {
    stdout.write("Enter $i : ");
    arr2[i] = int.parse(stdin.readLineSync()!);
  }

  Set<int> s1 = arr1.toSet();
  Set<int> s2 = arr2.toSet();
  Set<int> commmon = s1.intersection(s2);

  stdout.writeln("List-1 :  $arr1");
  stdout.writeln("List-2 :  $arr2");
  stdout.write("Common Elements is ${commmon.toList()}");
}
