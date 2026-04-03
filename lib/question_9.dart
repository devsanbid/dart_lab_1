import 'dart:io';

void main() {
  print("Enter a number: ");
  int number = int.parse(stdin.readLineSync()!);

  checkPalindrome(number: number);
}

void checkPalindrome({required int number}) {
  int reversed = 0;
  int temp = number;

  while (temp > 0) {
    int digit = temp % 10;
    reversed = (reversed * 10) + digit;
    temp = temp ~/ 10;
  }

  if (number == reversed) {
    print("Palindrome");
  } else {
    print("Not a palindrome");
  }
}
