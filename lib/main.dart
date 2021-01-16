import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
        title: Text(
          'Diece'),
          backgroundColor: Colors.red.shade900,
        ),
        body: DicePage(),
        ),
      )
  );
}
class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftbtn = 1,rbtn = 1;

  void cahngediece(){
    setState(() {
      leftbtn = Random().nextInt(6) + 1;
      rbtn = Random().nextInt(6) + 1;
    }
    );
  }
  @override
  Widget build(BuildContext context) {

    return  Center(
      child: Row(
        children: <Widget>[
          Expanded(
              child: FlatButton(
                onPressed: (){
                  cahngediece();
                },
                child: Image.asset('images/dice$leftbtn.png'),
              )
          ),
          Expanded(
            child: FlatButton(
              onPressed: (){
                cahngediece();
              },
              child: Image.asset('images/dice$rbtn.png'),
            ),

          ),
        ],

      ),
    );

  }
}

