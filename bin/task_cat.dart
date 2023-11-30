import 'dart:io';

void main() {
  print('Enter a long string with multiple words:');
  String userInput = getUserInput();

  String reversedString = reverseWords(userInput);
  print('Reversed String: $reversedString');
}

String getUserInput() {
  String input = stdin.readLineSync()!;
  return input;
}

String reverseWords(String input) {
  List<String> words = [];
  String currentWord = '';

  for (int i = 0; i < input.length; i++) {
    if (input[i] == ' ' || i == input.length - 1) {
      if (i == input.length - 1) {
        currentWord += input[i];
      }
      words.add(currentWord);
      currentWord = '';
    } else {
      currentWord += input[i];
    }
  }

  List<String> reversedWords = [];
  for (int i = words.length - 1; i >= 0; i--) {
    reversedWords.add(reverseWord(words[i]));
  }

  String reversedString = reversedWords.join(' ');

  return reversedString;
}

String reverseWord(String word) {
  String reversedWord = '';
  for (int i = word.length - 1; i >= 0; i--) {
    reversedWord += word[i];
  }
  return reversedWord;
}
