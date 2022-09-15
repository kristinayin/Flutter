import 'dart:io';

/** Assignment 3, Week 4
 *  Flutter Bootcamp 
 *  By Kristina Yin
*/

// PART 1: Create abstract class named Vehicle which has 4 abstract functions -  start, stop, accelerate, and brake & 3 concrete classes - bike, scooter, and car which extend the vehicle abstract class

abstract class Vehicle {
  String type = 'vehicle';

  @override
  String toString() {
    return type;
  }

  void start();
  void stop();
  void accelerate();
  void brake();
}

class Bike extends Vehicle {
  String type = 'bike';

  @override
  void start() {
    print("Bike is starting");
  }

  @override
  void stop() {
    print("Bike is stopping");
  }

  @override
  void accelerate() {
    print("Bike is accelerating");
  }

  @override
  void brake() {
    print("Bike is braking");
  }
}

class Scooter extends Vehicle {
  String type = 'scooter';

  @override
  void start() {
    print("Scooter is starting");
  }

  @override
  void stop() {
    print("Scooter is stopping");
  }

  @override
  void accelerate() {
    print("Scooter is accelerating");
  }

  @override
  void brake() {
    print("Scooter is braking");
  }
}

class Car extends Vehicle {
  String type = 'car';

  @override
  void start() {
    print("Car is starting");
  }

  @override
  void stop() {
    print("Car is stopping");
  }

  @override
  void accelerate() {
    print("Car is accelerating");
  }

  @override
  void brake() {
    print("Car is braking");
  }
}

// function for testing all vehicle functions
void testingVehicle(Vehicle vehicle) {
  print("\nTesting " + vehicle.toString() + " functions:");
  vehicle.start();
  vehicle.stop();
  vehicle.accelerate();
  vehicle.brake();
}

// PART 2: Write a String extension that will return a string which will have only the first letter uppercase and the rest all letters in lower case.

extension CapitalizeExtension on String {
  String get capitalize {
    String output = this[0].toUpperCase() + this.substring(1).toLowerCase();
    return output;
  }
}

// PART 3: Create a Pokemon class with name, type and speed. Implement Comparable, and make a  pokemon list with data given in assignment 2. Call the sort on the list and sort them by speed.

class Pokemon implements Comparable {
  String name = '';
  String type = '';
  int speed = 0;

  // constructor
  Pokemon(this.name, this.type, this.speed);

  // toString returns pokemon name
  @override
  String toString() {
    return '$name';
  }

  // compares speed with other pokemon (then by name if speed is equal), used covariant to avoid type error
  @override
  int compareTo(covariant Pokemon other) {
    int speedDif = this.speed - other.speed;
    return (speedDif != 0 ? speedDif : this.name.compareTo(other.name));
  }
}

void main() {
  // PART 1: testing Vehicle functions
  print(">> TESTING VEHICLE CLASS EXTENSION: ");
  Bike bike = Bike();
  testingVehicle(bike);

  Scooter scooter = Scooter();
  testingVehicle(scooter);

  Car car = Car();
  testingVehicle(car);

  // PART 2: testing String extension
  print("\nTESTING STRING EXTENSION: ");
  String testing = 'nfvREIFNOER';
  print(testing.capitalize);

  // PART 3: creating list of Pokemon
  Pokemon bulbasaur = Pokemon('Bulbasaur', 'grass', 30);
  Pokemon squirtle = Pokemon('Squirtle', 'water', 24);
  Pokemon charmander = Pokemon('Charmander', 'fire', 40);
  Pokemon venusaur = Pokemon('Venusaur', 'grass', 40);
  Pokemon caterpie = Pokemon('Caterpie', 'bug', 30);
  Pokemon pidgey = Pokemon('Pidgey', 'flying', 30);
  Pokemon pikachu = Pokemon('Pikachu', 'electric', 50);
  Pokemon raichu = Pokemon('Raichu', 'electric', 60);
  Pokemon rattata = Pokemon('Rattata', 'normal', 40);
  Pokemon charmelion = Pokemon('Charmelion', 'fire', 40);
  Pokemon charizard = Pokemon('Charizard', 'fire', 50);
  Pokemon spearow = Pokemon('Spearow', 'flying', 40);
  Pokemon oddish = Pokemon('Oddish', 'grass', 20);
  Pokemon poliwag = Pokemon('Poliwag', 'water', 50);
  Pokemon poliwhirl = Pokemon('Poliwhirl', 'water', 50);

  List<Pokemon> pokemonList = [
    bulbasaur,
    squirtle,
    charmander,
    venusaur,
    caterpie,
    pidgey,
    pikachu,
    raichu,
    rattata,
    charmelion,
    charizard,
    spearow,
    oddish,
    poliwag,
    poliwhirl,
  ];

  pokemonList.sort(); // sorts pokemonList from slowest to fastest speed
  print("\nTESTING COMPARABLE IMPLEMENTATION ON POKEMONLIST: ");
  for (int i = 0; i < pokemonList.length; i++) {
    print(pokemonList[i]);
  }
}
