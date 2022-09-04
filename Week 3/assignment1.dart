/** Assignment 1, Week 3
 *  Flutter Bootcamp 
 *  By Kristina Yin
*/

import 'dart:math';

enum Weather { rainy, cloudy, thunderstorm }

enum Day { Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday }

enum Food {
  Thai,
  sandwhich,
  pizza,
  tacos,
}

// convert enum to string
String enumToString(Object o) => o.toString().split('.').last;

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

void main() {
  Weather weatherToday = Weather.rainy;
  Day dayToday = Day.Monday;

  switch (weatherToday) {
  }
}
