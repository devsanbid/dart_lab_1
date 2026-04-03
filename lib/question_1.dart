
import 'dart:io';

void main(){

  print("Enter length: ");
  double length = double.parse(stdin.readLineSync()!);

  print("Enter breadth:  ");
  double breadth = double.parse(stdin.readLineSync()!);

  checkSquare(length: length, breadth: breadth);
}

void checkSquare({required double length, required double breadth}) {
  if (length == breadth) {
    print("square!!");
  } else {
    print("no square!!");
  }
}
