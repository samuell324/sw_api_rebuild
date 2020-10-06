import 'package:flutter/material.dart';
import 'characterModel.dart';
import 'secondPage.dart';

class CharacterList extends StatelessWidget {
  CharacterList ({Key key, List<Character> characterList})
      : _characterList = characterList,
        super(key: key);

  final List<Character> _characterList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _characterList.length,
      itemBuilder: (context, index) {
        return Card(
          elevation: 5,
          margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          child: Container(
            padding: EdgeInsets.all(15),
            child: ListTile(
              title: Text(
                _characterList[index].name,
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CharacterInfo(),
                        settings: RouteSettings(arguments: _characterList[index])));
              },
            ),
          ),
        );
      },
    );
  }
}

