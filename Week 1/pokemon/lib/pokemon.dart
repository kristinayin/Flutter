class Pokemon {
  String num;
  String name;
  String type;
  String location;
  String imageURL;
  String descrip;
  List<Pokemon> evolutions = [];

  // constructor with empty evolutions
  Pokemon(this.num, this.name, this.type, this.location, this.imageURL,
      this.descrip, this.evolutions);

  // named constructor without evolutions
  Pokemon.c1(this.num, this.name, this.type, this.location, this.imageURL,
      this.descrip);

  static List<Pokemon> pokedex = [
    Pokemon(
        "092",
        "Gastly",
        "Ghost, Poison",
        "Kanto",
        "assets/092.png",
        "Gastly is largely composed of gaseous matter. When exposed to a strong wind, the gaseous body quickly dwindles away. Groups of this Pokémon cluster under the eaves of houses to escape the ravages of wind.",
        [
          Pokemon.c1(
            "093",
            "Haunter",
            "Ghost, Poison",
            "Kanto",
            "assets/093.png",
            "Haunter is a dangerous Pokémon. If one beckons you while floating in darkness, you must never approach it. This Pokémon will try to lick you with its tongue and steal your life away.",
          ),
          Pokemon.c1(
              "094",
              "Gengar",
              "Ghost, Poison",
              "Kanto",
              "assets/094.png",
              "Sometimes, on a dark night, your shadow thrown by a streetlight will suddenly and startlingly overtake you. It is actually a Gengar running past you, pretending to be your shadow."),
        ]),
    Pokemon(
        "104",
        "Cubone",
        "Ground",
        "Kanto",
        "assets/104.png",
        "Cubone pines for the mother it will never see again. Seeing a likeness of its mother in the full moon, it cries. The stains on the skull the Pokémon wears are made by the tears it sheds.",
        [
          Pokemon.c1("105", "Marowak", "Ground", "Kanto", "assets/105.png",
              "Marowak is the evolved form of a Cubone that has overcome its sadness at the loss of its mother and grown tough. This Pokémon's tempered and hardened spirit is not easily broken.")
        ]),
    Pokemon(
        "129",
        "Magikarp",
        "Water",
        "Kanto",
        "assets/129.png",
        "Magikarp is a pathetic excuse for a Pokémon that is only capable of flopping and splashing. This behavior prompted scientists to undertake research into it.",
        [
          Pokemon.c1(
              "130",
              "Gyarados",
              "Water, Flying",
              "Kanto",
              "assets/103.png",
              "When Magikarp evolves into Gyarados, its brain cells undergo a structural transformation. It is said that this transformation is to blame for this Pokémon's wildly violent nature.")
        ]),
    Pokemon(
        "133",
        "Eevee",
        "Normal",
        "Kanto",
        "assets/133.png",
        "Eevee has an unstable genetic makeup that suddenly mutates due to the environment in which it lives. Radiation from various stones causes this Pokémon to evolve.",
        [
          Pokemon.c1("134", "Vaporeon", "Water", "Kanto", "assets/134.png",
              "Vaporeon underwent a spontaneous mutation and grew fins and gills that allow it to live underwater. This Pokémon has the ability to freely control water."),
          Pokemon.c1("135", "Jolteon", "Electric", "Kanto", "assets/135.png",
              "Jolteon's cells generate a low level of electricity. This power is amplified by the static electricity of its fur, enabling the Pokémon to drop thunderbolts. The bristling fur is made of electrically charged needles."),
          Pokemon.c1("136", "Flareon", "Fire", "Kanto", "assets/135.png",
              "Flareon's fluffy fur has a functional purpose—it releases heat into the air so that its body does not get excessively hot. This Pokémon's body temperature can rise to a maximum of 1,650 degrees Fahrenheit.")
        ]),
    Pokemon.c1(
      "143",
      "Snorlax",
      "Normal",
      "Kanto",
      "assets/143.png",
      "Snorlax's typical day consists of nothing more than eating and sleeping. It is such a docile Pokémon that there are children who use its expansive belly as a place to play.",
    ),
    Pokemon.c1(
      "150",
      "Mewtwo",
      "Psychic",
      "Kanto",
      "assets/150.png",
      "Mewtwo is a Pokémon that was created by genetic manipulation. However, even though the scientific power of humans created this Pokémon's body, they failed to endow Mewtwo with a compassionate heart.",
    ),
  ];
}
