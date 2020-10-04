import 'package:flutter/material.dart';
import 'characterModel.dart';
import 'secondPage.dart';

class CharacterList extends StatelessWidget {
  final List<Character> character;

  CharacterList({Key key, this.character}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: character.length,
      itemBuilder: (context, index) {
        return Card(
          elevation: 5,
          margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          child: Container(
            padding: EdgeInsets.all(15),
            child: ListTile(
              title: Text(
                character[index].name,
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => SecondPage(), settings: RouteSettings(
                  arguments: character[index]
                )
                ));
              },
            ),
          ),
        );
      },
    );
  }
}
