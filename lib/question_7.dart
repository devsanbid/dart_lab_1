import 'dart:io';

void main() {
  print("Enter number of terms (n): ");
  int n = int.parse(stdin.readLineSync()!);

  generateFibonacci(n: n);
}

void generateFibonacci({required int n}) {
  int a = 0;
  int b = 1;

  for (int i = 0; i < n; i++) {
    print(a);
    int next = a + b;
    a = b;
    b = next;
  }
}
