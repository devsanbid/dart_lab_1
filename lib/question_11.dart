import 'dart:io';

void main() {
  print("Enter the count of numbers: ");
  int count = int.parse(stdin.readLineSync()!);

  analyzeList(count: count);
}

void analyzeList({required int count}) {
  if (count <= 0) {
    print("Invalid count");
    return;
  }

  List<int> numbers = [];

  for (int i = 0; i < count; i++) {
    print("Enter number \$i: ");
    int num = int.parse(stdin.readLineSync()!);
    numbers.add(num);
  }

  int max = numbers[0];
  int min = numbers[0];
  int sum = 0;

  for (int i = 0; i < numbers.length; i++) {
    if (numbers[i] > max) {
      max = numbers[i];
    }
    if (numbers[i] < min) {
      min = numbers[i];
    }
    sum += numbers[i];
  }

  double average = sum / numbers.length;

  print("Largest: \$max");
  print("Smallest: \$min");
  print("Average: \$average");
}
