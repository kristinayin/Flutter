/** Assignment 2, Week 3
 *  Flutter Bootcamp 
 *  By Kristina Yin
*/

import 'dart:math'; // used in pickRandom()

// pokemon types
enum Type { Fire, Grass, Water }

class Pokemon {
  String name = ""; // default name string is empty
  double hp = 10;
  Type type = Type.Fire; // default type is fire

  // constructor
  Pokemon(this.name, this.type);

  @override
  // returns string in the form of: pokemonName(hpValue)
  String toString() {
    return '$name($hp)';
  }

  static List<Pokemon> revivePokemon(List<Pokemon> list) {
    for (int i = 0; i < list.length; i++) {
      list.elementAt(i).hp = 10;
    }
    return list;
  }
}

// calculate damage based on pokemon types
double calculateDamage(Pokemon attacker, Pokemon defender) {
  switch (attacker.type) {
    case Type.Fire:
      switch (defender.type) {
        case Type.Fire:
          return 1;
        case Type.Grass:
          return 2;
        case Type.Water:
          return 0.5;
      }
    case Type.Grass:
      switch (defender.type) {
        case Type.Fire:
          return 0.5;
        case Type.Grass:
          return 1;
        case Type.Water:
          return 2;
      }
    case Type.Water:
      switch (defender.type) {
        case Type.Fire:
          return 2;
        case Type.Grass:
          return 0.5;
        case Type.Water:
          return 1;
      }
  }
}

// reduce hp based on calculateDamage()
void inflictDamage(Pokemon attacker, Pokemon defender) {
  if (defender.hp > 0.0) {
    defender.hp -= calculateDamage(attacker, defender);
  } else {
    defender.hp = 0.0;
  }
}

// pick random pokemon from list
// if index is provided, makes sure the pokemon picked does not have that index from list
Pokemon pickRandom(List<Pokemon> list, [int? index]) {
  final random = Random();
  Pokemon pick = list.elementAt(random.nextInt(list.length));

  if (index != null) {
    while (pick == list.elementAt(index)) {
      pick = list.elementAt(random.nextInt(list.length));
    }
    return pick;
  } else {
    return pick;
  }
}

// checks if only one pokemon has more than 0 hp
bool oneAlive(List<Pokemon> list) {
  int stillAlive = 0; // holds number of pokemon with more than 0 hp
  for (int i = 0; i < list.length; i++) {
    if (list.elementAt(i).hp > 0.0) {
      stillAlive += 1;
    }
  }
  if (stillAlive == 1) {
    return true;
  } else {
    return false;
  }
}

// prints line in form of: attacker(hp_value) attacks defender(hp_value)
// or if defender has 0 hp: attacker roars with fury!
void printLine(List<Pokemon> list) {
  Pokemon attacker;
  do {
    attacker = pickRandom(list);
  } while (attacker.hp <= 0.0);
  Pokemon defender;
  do {
    defender = pickRandom(list);
  } while (attacker ==
      defender); // makes sure attacking pokemon and defending pokemon are different
  if (defender.hp <= 0) {
    print(attacker.toString() + " roars with fury!");
  } else {
    print(attacker.toString() + " attacks " + defender.toString());
    inflictDamage(attacker, defender);
  }
}

// prints out entire pokemon battle
void pokemonBattle(List<Pokemon> list) {
  while (oneAlive(list) == false) {
    printLine(list);
  }
  // after only one pokemon is left alive...
  print("A VICTOR EMERGES!");
  for (int i = 0; i < list.length; i++) {
    if (list.elementAt(i).hp > 0.0) {
      print(list.elementAt(i).name + " has won the battle.");
    }
  }
  // revive pokemon
  Pokemon.revivePokemon(list);
  for (int i = 0; i < list.length; i++) {
    print(list.elementAt(i).name +
        " has healed up to " +
        list.elementAt(i).hp.toString() +
        " HP");
  }
}

void main() {
  Pokemon charmander = Pokemon("Charmander", Type.Fire);
  Pokemon bulbasaur = Pokemon("Bulbasaur", Type.Grass);
  Pokemon squirtle = Pokemon("Squirtle", Type.Water);

  List<Pokemon> fighters = [charmander, bulbasaur, squirtle];
  pokemonBattle(fighters);
}
