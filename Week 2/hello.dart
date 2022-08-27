import 'dart:math';

void main() {
  /*
  int myAge = 22; // mini exercise 1
  double averageAge = 22; // mini exercise 2
  averageAge = (22 + 21) / 2;
  const testNumber = 1; // mini exercise 3
  const evenOdd = testNumber % 2;
  */

  // Challenge 1
  const int myAge = 22;
  int dogs = 0;
  dogs += 1;

  // Challenge 2
  var age = 16;
  print(age);
  age = 30;
  print(age);

  // Challenge 3
  const x = 46;
  const y = 10;
  const answer1 = (x * 100) + y; // 470
  const answer2 = (x * 100) + (y * 100); // 560
  const answer3 = (x * 100) + (y / 10); // 461

  // Challenge 4
  const double rating1 = 1.2;
  const double rating2 = 5.5;
  const double rating3 = 9.8;
  const double averageRating = (rating1 + rating2 + rating3) / 3;

  // Challenge 5
  const double a = 1.2;
  const double b = 5.5;
  const double c = 9.8;
  final double root1 = (-b + sqrt(pow(b, 2) - (4 * a * c))) / (2 * a);
  final double root2 = (-b - sqrt(pow(b, 2) - (4 * a * c))) / (2 * a);

  // Assignment 1
  double largest;
  if (root1 > root2) {
    largest = root1;
  } else {
    largest = root2;
  }
}
