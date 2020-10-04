import 'package:flutter/material.dart';

void main() {
  runApp(SWMain());
}

class SWMain extends StatefulWidget {
  @override
  _SWMainState createState() => _SWMainState();
}

class _SWMainState extends State<SWMain> {
  Icon customIcon = Icon(Icons.search);
  static Text titleText = Text("Star Wars API");
  Widget customSearchBar = titleText;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: customSearchBar,
          actions: <Widget>[IconButton(icon: customIcon, onPressed: () {})],
          backgroundColor: Colors.amber,
        ),
        body: Container(),
      ),
    );
  }
}
