/** Assignment 2, Week 4
 *  Flutter Bootcamp 
 *  By Kristina Yin
*/

void main() {
  // PART 1: Create a list of Pokemon, use Collection for to pokemon add to a new list with uppercase names, sort in alphabetical order

  var pokemons = [
    'bulbasaur',
    'squirtle',
    'charmander',
    'caterpie',
    'metapod',
    'butterfree',
    'weedle',
    'kakuan',
    'beedrill',
  ];

  var uppercasePokemons = [];

  for (var pokemon in pokemons) {
    uppercasePokemons.add(pokemon.toUpperCase());
  }

  uppercasePokemons.sort();

  for (var uppercasePokemon in uppercasePokemons) {
    print(uppercasePokemon);
  }

  // PART 2: Create a list of MapStrings which contains pokemon, their types, and their speed, and use where method to filter the pokemon as per their types into new lists

  Map<String, List<String>> pokemonMap = {
    'Bulbasaur': ['grass', '30'],
    'Squirtle': ['water', '24'],
    'Charmander': ['fire', '40'],
    'Venusaur': ['grass', '40'],
    'Caterpie': ['bug', '30'],
    'Pidgey': ['flying', '30'],
    'Pikachu': ['electric', '60'],
    'Raichu': ['electric', '60'],
    'Rattata': ['normal', '40'],
    'Charmelion': ['fire', '40'],
    'Charizard': ['fire', '50'],
    'Spearow': ['flying', '40'],
    'Oddish': ['grass', '20'],
    'Poliwag': ['water', '50'],
    'Poliwhirl': ['water', '50'],
  };

  List<String> firePokemons = pokemonMap.keys
      .where((pokemon) => pokemonMap[pokemon]?.first == 'fire')
      .toList();
  List<String> waterPokemons = pokemonMap.keys
      .where((pokemon) => pokemonMap[pokemon]?.first == 'water')
      .toList();
  List<String> grassPokemons = pokemonMap.keys
      .where((pokemon) => pokemonMap[pokemon]?.first == 'grass')
      .toList();

  print("Fire type pokemon list:");
  print(firePokemons);
  print("Water type pokemon list:");
  print(waterPokemons);
  print("Grass type pokemon list:");
  print(grassPokemons);
}
