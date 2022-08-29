import 'package:flutter/material.dart';
import 'pokemon.dart';
import 'pokedex.dart';

void main() {
  runApp(const PokemonApp());
}

class PokemonApp extends StatelessWidget {
  const PokemonApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  // 1
  @override
  Widget build(BuildContext context) {
    // 2
    final ThemeData theme = ThemeData();
    // 3
    return MaterialApp(
      // 4
      title: 'Pokedex',
      /*
      theme: ThemeData(
        primaryColor: Color.fromARGB(255, 23, 3, 3),
        appBarTheme: const AppBarTheme(
          elevation: 0.0,
          backgroundColor: Colors.black,
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 40,
            fontFamily: 'Pokemon',
          ),
        ),
      ),
      */
      // 5

      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
          primary: Color.fromARGB(255, 23, 3, 3),
          secondary: Color.fromARGB(255, 106, 106, 106),
        ),
        textTheme: theme.textTheme.apply(
          fontFamily:
              'Pokemon', // TODO: how to change title font family and/or use an image/logo?
        ),
        scaffoldBackgroundColor: Colors.black,
      ),

      // 6
      home: const MyHomePage(title: 'Pokedex'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // 1
    return Scaffold(
      // 2
      appBar: AppBar(
          title: Image.asset('assets/title.png',
              fit: BoxFit.contain, height: 100)),
      // 3
      body: SafeArea(
        child: ListView.builder(
          itemCount: Pokemon.pokedex.length,
          itemBuilder: (BuildContext context, int index) {
            // 7
            return GestureDetector(
              // 8
              onTap: () {
                // 9
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      // 10
                      // return Pokedex(pokemon: Pokemon.pokedex[index]);
                      return Pokedex(title: 'pokedex');
                    },
                  ),
                );
              },
              // 11
              child: buildPokemonCard(Pokemon.pokedex[index]),
            );
          },
        ),
      ),
    );
  }

  Widget buildPokemonCard(Pokemon pokemon) {
    // 1
    return Card(
      color: Colors.black,
      // 1
      elevation: 0.0,
      // 2
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      // 3
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        // 4
        child: Column(
          children: <Widget>[
            Image(image: AssetImage(pokemon.imageURL)),
            // 5
            const SizedBox(
              height: 14.0,
            ),
            // 6
            Text(
              // name
              pokemon.name,
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w700,
                fontFamily: 'Pokemon',
                color: Colors.white,
              ),
            ),

            Text(
              // num
              pokemon.num,
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w700,
                fontFamily: 'Pokemon',
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
