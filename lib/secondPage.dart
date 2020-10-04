import 'package:flutter/material.dart';
import 'infoWidget.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
        Text("Character info"),
        textTheme: ThemeData.light().textTheme.copyWith(
          title: TextStyle (
            fontSize: 18,
            fontWeight: FontWeight.bold
          )
        ),

        backgroundColor: Colors.amber,
      ),
      body: InfoWidget()
    );
  }
}
