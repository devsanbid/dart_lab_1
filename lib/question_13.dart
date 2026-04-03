import 'dart:io';

void main() {
  print("Enter first number: ");
  double num1 = double.parse(stdin.readLineSync()!);

  print("Enter operator (+, -, *, /, %): ");
  String op = stdin.readLineSync()!;

  print("Enter second number: ");
  double num2 = double.parse(stdin.readLineSync()!);

  calculate(num1: num1, op: op, num2: num2);
}

void calculate({required double num1, required String op, required double num2}) {
  switch (op) {
    case '+':
      print(num1 + num2);
      break;
    case '-':
      print(num1 - num2);
      break;
    case '*':
      print(num1 * num2);
      break;
    case '/':
      if (num2 == 0) {
        print("Error: Division by zero");
      } else {
        print(num1 / num2);
      }
      break;
    case '%':
      if (num2 == 0) {
        print("Error: Division by zero");
      } else {
        print(num1 % num2);
      }
      break;
    default:
      print("Invalid operator");
  }
}
