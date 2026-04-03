import 'dart:io';

void main() {
  print("Enter a string: ");
  String text = stdin.readLineSync()!;

  countCharacters(text: text);
}

void countCharacters({required String text}) {
  int vowels = 0;
  int consonants = 0;
  int digits = 0;
  int specials = 0;
  
  String vowelsList = "aeiouAEIOU";

  for (int i = 0; i < text.length; i++) {
    String char = text[i];
    
    if (vowelsList.contains(char)) {
      vowels++;
    } else if (RegExp(r'[a-zA-Z]').hasMatch(char)) {
      consonants++;
    } else if (RegExp(r'[0-9]').hasMatch(char)) {
      digits++;
    } else {
      specials++;
    }
  }

  print("Vowels: \$vowels");
  print("Consonants: \$consonants");
  print("Digits: \$digits");
  print("Special Characters: \$specials");
}
