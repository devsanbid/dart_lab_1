import 'dart:io';

void main() {
  print("Enter 1 for Celsius to Fahrenheit, 2 for Fahrenheit to Celsius: ");
  int choice = int.parse(stdin.readLineSync()!);

  print("Enter temperature: ");
  double temperature = double.parse(stdin.readLineSync()!);

  convertTemperature(choice: choice, temperature: temperature);
}

void convertTemperature({required int choice, required double temperature}) {
  if (choice == 1) {
    double fahrenheit = (temperature * 9 / 5) + 32;
    print(fahrenheit);
  } else if (choice == 2) {
    double celsius = (temperature - 32) * 5 / 9;
    print(celsius);
  } else {
    print("Invalid choice");
  }
}
