// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  @override
  int left = 5;
  int right = 6;

  randomize(){
    left = Random().nextInt(6)+1;
    right = Random().nextInt(6)+1;
  }
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget> [
          Expanded(
            child: TextButton(
              onPressed: (){
                //print('Left button is pressed');
                setState(() {
                  randomize();
                });
              },
              child: Image.asset('images/dice$left.png')
            )
          ),
          Expanded(
            child: TextButton(
              onPressed: (){
                //print('Right button is pressed');
                setState(() {
                  randomize();
                });
              },
              child: Image.asset('images/dice$right.png')
            )
          ),
        ],
        ),
    );
  }
}
