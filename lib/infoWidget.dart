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
            child: Text("Name : ${character.name}", style: Theme.of(context).textTheme.title),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text("Height : ${character.height}", style: Theme.of(context).textTheme.title),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text("Mass : ${character.mass}", style: Theme.of(context).textTheme.title),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text("Hair color : ${character.hairColor}", style: Theme.of(context).textTheme.title),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text("Skin color : ${character.skinColor}", style: Theme.of(context).textTheme.title),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text("Eye color : ${character.eyeColor}", style: Theme.of(context).textTheme.title),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text("Gender : ${character.gender}", style: Theme.of(context).textTheme.title),
          ),
        ],
      ),
    );
  }
}
