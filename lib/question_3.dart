import 'dart:io';

void main() {
  print("Enter number of classes held: ");
  int held = int.parse(stdin.readLineSync()!);
  print("Enter number of classes attended: ");
  int attended = int.parse(stdin.readLineSync()!);

  checkAttendance(held: held, attended: attended);
}

void checkAttendance({required int held, required int attended}) {
  double percentage = (attended / held) * 100;
  print("Percentage: $percentage%");

  if (percentage >= 75) {
    print("Allowed to sit in the exam");
  } else {
    print("Not allowed to sit in the exam");
  }
}
