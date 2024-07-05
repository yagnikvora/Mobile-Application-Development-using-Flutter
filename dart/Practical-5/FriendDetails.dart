import 'dart:io';

class Friend {
  String name = "";
  int age = 0;
  String email = "";

  Friend({required String name, required int age, required String email}) {
    this.name = name;
    this.age = age;
    this.email = email;
  }

  String toString() {
    return 'Name: $name, Age: $age, Email: $email';
  }
}

void main() {
  Map<String, Friend> friend = {};

  friend['Yagnik'] = Friend(name: 'Yagnik', age: 10, email: 'yagnik@gmail.com');
  friend['Abc'] = Friend(name: 'Abc', age: 20, email: 'abc@gmail.com');
  while (true) {
    stdout.write(
        '\n1. Display Friends\n2. Add Friend\n3. Search Friend\n4. Exit\nEnter Choice : ');
    String choice = stdin.readLineSync()!;
    switch (choice) {
      case '1':
        if (friend.isEmpty)
          print('No friends in the list.');
        else {
          print('Friends in the list:');
          friend.forEach((name, friend) {
            print(friend);
          });
        }
        break;
      case '2':
        print('Enter the name of the friend:');
        String name = stdin.readLineSync()!;
        print('Enter the age:');
        int age = int.parse(stdin.readLineSync()!);
        print('Enter the email:');
        String email = stdin.readLineSync()!;

        Friend newFriend = Friend(name: name, age: age, email: email);

        friend[name] = newFriend;

        print('Friend added successfully!');
        break;
      case '3':
         print('Enter the name to search:');
        String name = stdin.readLineSync()!;

        if (friend.containsKey(name)) {
          print('Friend Details:');
          print(friend[name]);
        } else {
          print('Friend not found.');
        }
        break;
      case '4':
        exit(0);
      default:
        print('Invalid choice. Please try again.');
    }
  }
}

