import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal.shade100,
        appBar: AppBar(
          title: const Center(child: Text('Dice')),
          backgroundColor: Colors.teal.shade700,
        ),
        body: const MyDice(),
      ),
    ));

class MyDice extends StatefulWidget {
  const MyDice({Key? key}) : super(key: key);

  @override
  _MyDiceState createState() => _MyDiceState();
}

class _MyDiceState extends State<MyDice> {
  int upDiceNumber = 1;
  int downDiceNumber = 1;
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  getRandomNumberOfDice() {
    setState(() {
      upDiceNumber = Random().nextInt(6) + 1;
      downDiceNumber = Random().nextInt(6) + 1;
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
        child: Column(
          children: [
            // for up dice face
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        getRandomNumberOfDice();
                      },
                      child: Image.asset('images/dice$upDiceNumber.png'),
                    ),
                  ),
                ],
              ),
            ),
            //for dice face in center
            Expanded(
              flex: 2,
              child: Center(
                child: Row(
                  children: [
                    Expanded(
                      child: TextButton(
                        onPressed: () {
                          getRandomNumberOfDice();
                        },
                        child: Image.asset('images/dice$leftDiceNumber.png'),
                      ),
                    ),
                    Expanded(
                      child: TextButton(
                        onPressed: () {
                          getRandomNumberOfDice();
                        },
                        child: Image.asset('images/dice$rightDiceNumber.png'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //for down dice face
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        getRandomNumberOfDice();
                      },
                      child: Image.asset('images/dice$downDiceNumber.png'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
