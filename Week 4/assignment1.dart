/** Assignment 1-3, Week 4
 *  Flutter Bootcamp 
 *  By Kristina Yin
 * 
 * 
 * Assignment 1: Nullable vs Non-Nullable types
 * 
 * Dart types, like int or String, are nullable by default. This means that they 
 * can never be set/contain the value of null. However, every non-nullable type 
 * has a corresponding nullable type such as int? or String? that allows you to
 * do so, while making sure that you add code to handle possibility of null 
 * values.
*/

// Assignment 2

// prints name with format firstName lastName if isSurnameAtStart is null or true, or else prints lastName firstName
void printName(String firstName, String lastName, [bool? isSurnameAtStart]) {
  isSurnameAtStart = isSurnameAtStart ?? false;
  String fullName;
  if (isSurnameAtStart) {
    fullName = lastName + " " + firstName; // Yin Kristina
  } else {
    fullName = firstName + " " + lastName; // Kristina Yin
  }
  print(fullName);
}

void main() {
  printName("Kristina", "Yin");
  printName("Kristina", "Yin", true);
  printName("Kristina", "Yin", false);
}
