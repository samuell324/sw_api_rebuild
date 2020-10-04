import 'package:flutter/material.dart';
import 'characterModel.dart';

class InfoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Character character = ModalRoute.of(context).settings.arguments;
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text("Name : ${character.name}"),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text("Height : ${character.height}"),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text("Mass : ${character.mass}"),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text("Hair color : ${character.hairColor}"),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text("Skin color : ${character.skinColor}"),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text("Eye color : ${character.eyeColor}"),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text("Gender : ${character.gender}"),
          ),
        ],
      ),
    );
  }
}
