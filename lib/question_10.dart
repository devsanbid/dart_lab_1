import 'dart:io';

void main() {
  print("Enter a number: ");
  int number = int.parse(stdin.readLineSync()!);

  calculateFactorial(number: number);
}

void calculateFactorial({required int number}) {
  int iterativeFact = 1;
  for (int i = 1; i <= number; i++) {
    iterativeFact *= i;
  }

  int recursiveFact = factorialRecursive(number);

  print("Iterative: \$iterativeFact");
  print("Recursive: \$recursiveFact");
}

int factorialRecursive(int n) {
  if (n <= 1) {
    return 1;
  }
  return n * factorialRecursive(n - 1);
}
