import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(LudoGame());
}

class LudoGame extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: LudoBoard());
  }
}

class LudoBoard extends StatefulWidget {
  @override
  _LudoBoardState createState() => _LudoBoardState();
}

class _LudoBoardState extends State<LudoBoard> {
  int diceNumber = 1;

  void rollDice() {
    setState(() {
      diceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ludo Game'),
        actions: [
          IconButton(icon: Icon(Icons.settings), onPressed: () {}),
          IconButton(icon: Icon(Icons.info), onPressed: () {}),
          IconButton(icon: Icon(Icons.share), onPressed: () {}),
          IconButton(icon: Icon(Icons.leaderboard), onPressed: () {}),
          IconButton(icon: Icon(Icons.home), onPressed: () {}),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Welcome to Ludo!',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          Icon(Icons.casino, size: 100),
          SizedBox(height: 20),
          ElevatedButton.icon(
            onPressed: rollDice,
            icon: Icon(Icons.casino),
            label: Text('Roll Dice'),
          ),
          SizedBox(height: 20),
          Text(
            'Rolled: $diceNumber',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
