import 'dart:convert';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'characterModel.dart';
import 'package:flutter/foundation.dart';
import 'characterList.dart';

void main() {
  runApp(SWMain());
}

Future<List<Character>> fetchCharacters(http.Client client) async {
  final response = await client.get('http://swapi.dev/api/people/');
  return compute(parseCharacter, response.body);
}

List<Character> parseCharacter(responseBody) {
  final parsed = jsonDecode(responseBody) as Map<String, dynamic>;
  return parsed["results"]
      .map<Character>((json) => Character.fromJson(json))
      .toList();
}

class SWMain extends StatefulWidget {
  @override
  _SWMainState createState() => _SWMainState();
}

class _SWMainState extends State<SWMain> {
  Icon customIcon = Icon(Icons.search);
  static Text titleText = Text("Star Wars API");
  Widget customSearchBar = titleText;
  var searchList = List<Character>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: customSearchBar,
          actions: <Widget>[
            IconButton(
                icon: customIcon,
                onPressed: () {
                  setState(() {
                    if (this.customIcon.icon == Icons.search) {
                      this.customIcon = Icon(Icons.cancel);
                      this.customSearchBar = TextField(
                        textInputAction: TextInputAction.go,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Search character"),
                        onChanged: (text) {
                          text = text.toLowerCase();
                          searchList = searchList.where((search) {
                            var charTitle = search.name.toLowerCase();
                            return charTitle.contains(text);
                          }).toList();
                        },
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      );
                    } else {
                      this.customIcon = Icon(Icons.search);
                      this.customSearchBar = titleText;
                    }
                  });
                })
          ],
          backgroundColor: Colors.amber,
        ),
        body: FutureBuilder<List<Character>>(
          future: fetchCharacters(http.Client()),
          builder: (context, snapshot) {
            if (snapshot.hasError) print(snapshot.error);
            return snapshot.hasData
                ? CharacterList(character: snapshot.data,)
                : Center(child: CircularProgressIndicator());
          },
        ),
      ),
    );
  }
}
