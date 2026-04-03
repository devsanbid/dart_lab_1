import 'dart:io';

void main() {
  print("Enter your marks: ");
  int marks = int.parse(stdin.readLineSync()!);
  getReport(marks: marks);
}

void getReport({required int marks}) {
  if (marks < 25) {
    print("F");
  }else if(marks >= 25 && marks <= 45){
    print("E");
  }else if(marks >= 45 && marks <= 50){
    print("D");
  }else if(marks >= 50 && marks <= 60){
    print("C");
  }else if(marks >= 60 && marks <= 80){
    print("B");
  }else{
    print("A");
  }
}
