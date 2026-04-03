import 'dart:io';

void main() {
  print("Enter an integer: ");
  int number = int.parse(stdin.readLineSync()!);

  checkNumber(number: number);
}

void checkNumber({required int number}) {
  if (number > 0) {
    print("Positive");
    if (number % 2 == 0) {
      print("Even");
    } else {
      print("Odd");
    }
  } else if (number < 0) {
    print("Negative");
  } else {
    print("Zero");
  }
}
