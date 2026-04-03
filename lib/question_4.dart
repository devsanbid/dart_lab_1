import 'dart:io';

void main() {
  print("Enter a 4-digit number: ");
  int number = int.parse(stdin.readLineSync()!);

  reverseNumber(number: number);
}

void reverseNumber({required int number}) {
  int reversed = 0;
  int temp = number;

  while (temp > 0) {
    int digit = temp % 10;
    reversed = (reversed * 10) + digit;
    temp = temp ~/ 10;
  }

  print(reversed);
}
