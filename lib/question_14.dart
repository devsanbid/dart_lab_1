import 'dart:io';

void main() {
  print("Enter a positive integer: ");
  int n = int.parse(stdin.readLineSync()!);

  printMultiplicationTable(n: n);
}

void printMultiplicationTable({required int n}) {
  for (int i = 1; i <= 10; i++) {
    int result = n * i;
    print("\$n x \$i = \$result");
  }
}
