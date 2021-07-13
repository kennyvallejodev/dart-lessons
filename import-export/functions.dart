import 'dart:math';

String fetchRandomString () {

  List<String> Words = [
    "First Word",
    "Second Word",
    "Third Word",
    "Fourth Word"
  ];

  Random random = new Random();


  return Words[random.nextInt(Words.length)];
}