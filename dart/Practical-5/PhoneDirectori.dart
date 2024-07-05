import 'dart:io';

void main() {
  Map<String, List<String>> phone = {
    "yagnik": ["8320275940"],
    "xyz": ["8888888888"]
  };
  while (true) {
    stdout.write(
        "Enter 1 for Show all \nEnter 2 for Insert New \nEnter 3 for Display specific \nEnter 4 for exit\nEnter Choice : ");
    int c = int.parse(stdin.readLineSync()!);
    switch (c) {
      case 1:
        stdout.write("\nAll contacts is here\n");
        phone.forEach((key, value) {
          stdout.write("\n$key : $value \n");
        });
        break;
      case 2:
        stdout.write("\nEnter Name : ");
        String n = stdin.readLineSync()!;
        stdout.write("\nEnter Number : ");
        String num = stdin.readLineSync()!;
        if (phone.containsKey(n))
          phone[n]!.add(num);
        else
          phone[n] = [num];
        stdout.write("\nRecord inserted...\n");
        break;
      case 3:
        stdout.write("\nEnter Name : ");
        String n = stdin.readLineSync()!;
        if (phone.containsKey(n))
          stdout.write("\n$n : ${phone[n]}\n");
        else
          stdout.write("\nContact details not found\n");
        break;
      case 4:
        return;
      default:
        stdout.write("\nEnter right option\n");
    }
  }
}
