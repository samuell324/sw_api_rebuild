import 'package:flutter/material.dart';
import 'package:sw_api_practice/characterModel.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Character character = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text("Character info"),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [],
        ),
      ),
    );
  }
}
