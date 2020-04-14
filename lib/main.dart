import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue[500],
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.blue[700],
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var leftdicenumber = 1;
  var rightdicenumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(children: <Widget>[
            Expanded(
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    leftdicenumber = Random().nextInt(6) + 1;
                    rightdicenumber = Random().nextInt(6) + 1;
                  });
                },
                child: Image.asset('images/dice$leftdicenumber.png'),
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    rightdicenumber = Random().nextInt(6) + 1;
                    leftdicenumber = Random().nextInt(6) + 1;
                  });
                },
                child: Image.asset('images/dice$rightdicenumber.png'),
              ),
            ),
          ]),
          SizedBox(height: 20),
          Text(
            "Press any of the dice to roll!",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}
