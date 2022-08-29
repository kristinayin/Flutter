import 'dart:math';

dynamic trig(int degree) {
  // Used dynamic for the purpose of assigning value to var and seeing what the runtimeType is
  double radian = degree * (pi / 180); // convert degree to radians
  dynamic x = (pow(sin(radian), 2) + pow(cos(radian), 2)); // sin^2(x) + cos^(x)
  return x;
}

// used for Assignment 3 lists
// input: list of num variables
// output: an elem of the list as a String
String pickOneNum(List<num> numList) {
  final random = new Random();
  dynamic element = numList[random.nextInt(numList.length)];
  return element.toString();
}

// used for Assignment 3 lists
// select an element from a list of Strings
String pickOneStr(List<String> strList) {
  final random = new Random();
  String element = strList[random.nextInt(strList.length)];
  return element;
}

void main() {
  /*
  int myAge = 22; // mini exercise 1
  double averageAge = 22; // mini exercise 2
  averageAge = (22 + 21) / 2;
  const testNumber = 1; // mini exercise 3
  const evenOdd = testNumber % 2;
  
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
  const double a = 6;
  const double b = 11;
  const double c = -35;
  final double root1 = (-b + sqrt(pow(b, 2) - (4 * a * c))) / (2 * a);
  final double root2 = (-b - sqrt(pow(b, 2) - (4 * a * c))) / (2 * a);

  // Assignment 1
  double largest;
  if (root1 > root2) {
    largest = root1;
  } else {
    largest = root2;
  }

  print("'''");
  print("The first root of the equation is " +
      root1.toString() +
      " and its integer is " +
      root1.toInt().toString());
  print("The first root of the equation is " +
      root2.toString() +
      " and its integer is " +
      root2.toInt().toString());
  print("The largest root has the value equal to " + largest.toString());
  print("'''");

  // Assignment 2
  int y = 45;
  var result = trig(y);
  print("'''");
  print("The value of the expression sin^2(" +
      y.toString() +
      ") + cos^2(" +
      y.toString() +
      ") is " +
      result.toString() +
      " and its run type value is " +
      result.runtimeType.toString());
  print("'''");
  */

  // Assignment 3

  List<num> numList1 = [2, 3, 4, 5, 6, 7, 8, 9, 10, 11];
  List<num> numList2 = [
    11111.11,
    100000000,
    0,
    500,
    3842,
    40686490,
    4395829,
    97899,
    98789.20,
    8349570.23
  ];
  List<String> adj = [
    "clever",
    "energetic",
    "boisterous",
    "intelligent",
    "awesome",
    "gorgeous",
    "stellar",
    "spectacular",
    "wondorous",
    "fearless"
  ];
  List<String> name = [
    "Annika",
    "Arun",
    "Dave",
    "Gift",
    "Jonas",
    "Kristina",
    "Luna",
    "Raul",
    "Reshu",
    "Sarada"
  ];
  List<String> verb = [
    "dance",
    "fly",
    "ski",
    "sleep",
    "investigate",
    "teleport",
    "levitate",
    "climb",
    "haunt",
    "debate"
  ];
  List<String> items = [
    "sneakers",
    "magic balls",
    "flying carpets",
    "jewelry",
    "leather jackets",
    "shampoos",
    "cannonballs",
    "goggles",
    "flowers",
    "door handles"
  ];

  List<String> job = [
    "detective",
    "pokemon trainer",
    "wizard",
    "Olympic gymnast",
    "Youtuber",
    "president",
    "astronaut",
    "musician",
    "actor",
    "alchemist"
  ];

  List<String> location = [
    "Los Angeles",
    "Silicon Valley",
    "Hogwarts",
    "Europe",
    "Hyrule",
    "Willy Wonka's Factory",
    "Neverland",
    "New York",
    "space",
    "Jurassic Park"
  ];

  print("The " +
      pickOneStr(adj) +
      " " +
      pickOneStr(name) +
      " and " +
      pickOneStr(adj) +
      " " +
      pickOneStr(name) +
      " wanted to " +
      pickOneStr(verb) +
      " at " +
      pickOneStr(location) +
      ". In order to accomplish this, they had to buy " +
      pickOneNum(numList1) +
      " " +
      pickOneStr(items) +
      ", " +
      pickOneNum(numList1) +
      " " +
      pickOneStr(items) +
      ", and " +
      pickOneNum(numList1) +
      " " +
      pickOneStr(items) +
      " which costs \$" +
      pickOneNum(numList2) +
      " total. They did not have the money on hand. In order to cover the cost, they decided to work as a " +
      pickOneStr(job) +
      " and a " +
      pickOneStr(job) +
      " for " +
      pickOneNum(numList1) +
      " months respectively. They ended up raising \$" +
      pickOneNum(numList2) +
      " toward their goal. So, instead, they decided to " +
      pickOneStr(verb) +
      " at " +
      pickOneStr(location) +
      " and invited their good friends " +
      pickOneStr(name) +
      " and " +
      pickOneStr(name) +
      " as well. They all packed " +
      pickOneNum(numList1) +
      " " +
      pickOneStr(items) +
      ", " +
      pickOneNum(numList1) +
      " " +
      pickOneStr(items) +
      ", and " +
      pickOneNum(numList1) +
      " " +
      pickOneStr(items) +
      ". Their trip lasted for " +
      pickOneNum(numList1) +
      " months. Their adventure ended up being " +
      pickOneStr(adj) +
      ". They all learned how to be more " +
      pickOneStr(adj) +
      " individuals and were able to still have \$" +
      pickOneNum(numList2) +
      " left over. But in the end, it was not about the destination, but the " +
      pickOneStr(adj) +
      " friends they made along the way.");
}
