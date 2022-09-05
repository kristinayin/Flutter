/** Assignment 1, Week 3
 *  Flutter Bootcamp 
 *  By Kristina Yin
*/

import 'dart:core';
import 'dart:math';

enum Weather { rainy, cloudy, thunderstorm }

enum Day { Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday }

enum Food {
  Thai,
  sandwhich,
  pizza,
  tacos
}

// extension of Food enum
extension FoodExtension on Food {
  static const Map<Food, String> names = {
    Food.Thai: "ate Thai food.",
    Food.sandwhich: "made a ham sandwhich.",
    Food.pizza: "ate pizza.",
    Food.tacos: "ate tacos.",
  };

  String get name => names[this].toString();
}

// pick random value from Weather
Weather randomWeather() {
  final random = Random();
  Weather weatherToday = Weather.values[random.nextInt(3)];
  return weatherToday;
}

// choose food based on weather and day of the week
Food decideFood(Day dayToday, Weather weatherToday) {
  switch (dayToday) {
    case Day.Monday:
      if (weatherToday == Weather.thunderstorm) {
        return Food.tacos;
      } else {
        return Food.sandwhich;
      }
    case Day.Tuesday:
      return Food.pizza;
    case Day.Wednesday:
      if (weatherToday == Weather.thunderstorm) {
        return Food.tacos;
      } else {
        return Food.sandwhich;
      }
    case Day.Thursday:
      if (weatherToday == Weather.rainy) {
        return Food.Thai;
      } else if (weatherToday == Weather.thunderstorm) {
        return Food.tacos;
      } else {
        return Food.sandwhich;
      }
    case Day.Friday:
      if (weatherToday == Weather.thunderstorm) {
        return Food.tacos;
      } else {
        return Food.sandwhich;
      }
    case Day.Saturday:
      if (weatherToday == Weather.cloudy) {
        return Food.Thai;
      } else if (weatherToday == Weather.thunderstorm) {
        return Food.tacos;
      } else {
        return Food.sandwhich;
      }
    case Day.Sunday:
      if (weatherToday == Weather.cloudy) {
        return Food.Thai;
      } else if (weatherToday == Weather.thunderstorm) {
        return Food.tacos;
      } else {
        return Food.sandwhich;
      }
  }
}

/*
// print whole food statement based on Food enum
String foodString(Food chosenFood) {
  switch (chosenFood) {
    case Food.Thai:
      return "ate Thai food.";
    case Food.sandwhich:
      return "made a ham sandwhich.";
    case Food.pizza:
      return "ate pizza.";
    case Food.tacos:
      return "ate tacos.";
  }
}
*/

// print line, using decideFood and randomWeather
void printLine(Day today, Weather weatherToday) {
  print(today.name +
      " is " +
      weatherToday.name +
      ", so Sarah " +
      decideFood(today, weatherToday).name);
}

void printWeeklyFood() {
  for (int i = 0; i < 7; i++) {
    Weather weatherToday = randomWeather();
    printLine(Day.values[i], weatherToday);
  }
}

void main() {
  printWeeklyFood();
}
