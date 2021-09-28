import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            backgroundColor: Colors.blue.shade900,
            title: Center(child: Text('ASK ME ANYTHING PLEASE')),
          ),
          body: MagicApp(),
        ),
      ),
    );

class MagicApp extends StatefulWidget {
  const MagicApp({Key? key}) : super(key: key);

  @override
  _MagicAppState createState() => _MagicAppState();
}

class _MagicAppState extends State<MagicApp> {
  int imageNum = 2;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: TextButton(
          onPressed: () {
            setState(() {
              imageNum = Random().nextInt(5) + 1;
            });
          },
          child: Image(
            image: AssetImage('images/ball$imageNum.png'),
          ),
        ),
      ),
    );
  }
}
