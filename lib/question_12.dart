import 'dart:io';

void main() {
  print("Enter a year: ");
  int year = int.parse(stdin.readLineSync()!);

  checkLeapYear(year: year);
}

void checkLeapYear({required int year}) {
  if ((year % 4 == 0 && year % 100 != 0) || (year % 400 == 0)) {
    print("Leap Year");
  } else {
    print("Not a Leap Year");
  }
}
