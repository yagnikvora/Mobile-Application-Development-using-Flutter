import 'dart:io';

void main() {
  List<String> city = [
    "Delhi",
    "Mumbai",
    "Bangalore",
    "Hyderabad",
    "Ahmedabad"
  ];

  stdout.writeln("List before replaced : $city \n");

  String target = "Ahmedabad";
  String replace = "Surat";

  for (int i = 0; i < city.length; i++) {
    if (city[i] == target) {
      city[i] = replace;
    }
  }

  stdout.write("List after replaced : $city");
}
