import 'package:flutter/material.dart';
import 'pokemon.dart';

class PokemonDetail extends StatefulWidget {
  final Pokemon pokemon;

  const PokemonDetail({
    Key? key,
    required this.pokemon,
  }) : super(key: key);

  @override
  _PokemonDetailState createState() {
    return _PokemonDetailState();
  }
}

class _PokemonDetailState extends State<PokemonDetail> {
  int _sliderVal = 1;

  @override
  Widget build(BuildContext context) {
    // 1
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.pokemon.name),
      ),
      // 2
      body: SafeArea(
        // 3
        child: Column(
          children: <Widget>[
            // 4
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Image(
                image: AssetImage(widget.pokemon.imageURL),
              ),
            ),
            // 5
            const SizedBox(
              height: 4,
            ),
            // 6
            Text(
              widget.pokemon.name,
              style: const TextStyle(fontSize: 18),
            ),
            Text(
              widget.pokemon.num,
              style: const TextStyle(fontSize: 18),
            ),
            Text(
              widget.pokemon.type,
              style: const TextStyle(fontSize: 18),
            ),
            Text(
              widget.pokemon.location,
              style: const TextStyle(fontSize: 18),
            ),
            Text(
              widget.pokemon.descrip,
              style: const TextStyle(fontSize: 18),
            ),
            // 7
            Expanded(
              // 8
              child: ListView.builder(
                padding: const EdgeInsets.all(7.0),
                itemCount: widget.pokemon.evolutions.length,
                itemBuilder: (BuildContext context, int index) {
                  final evolution = widget.pokemon.evolutions[index];
                  // 9
                  // TODO: Add ingredient.quantity
                  return Text('Evolution:'
                      '${evolution.name} ${evolution.num} ${evolution.descrip}');
                },
              ),
            ),
            /*
            Slider(
              // 10
              min: 1,
              max: 10,
              divisions: 9,
              // 11
              label: '${_sliderVal * widget.recipe.servings} servings',
              // 12
              value: _sliderVal.toDouble(),
              // 13
              onChanged: (newValue) {
                setState(() {
                  _sliderVal = newValue.round();
                });
              },
              // 14
              activeColor: Colors.green,
              inactiveColor: Colors.black,
            ),
            */
          ],
        ),
      ),
    );
  }
}
