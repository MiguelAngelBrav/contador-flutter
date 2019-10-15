

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  final styleTitle = TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold);
  final styleCount = TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold, color: Color.fromRGBO(0, 0, 0, 0.5));

  // int mCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
        title: Text('Mi contador'),
        centerTitle: true,
        elevation: 10.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Contador de tabs', style: styleTitle ),
            Text('0', style: styleCount ),

          ],
        )
      ),
      persistentFooterButtons: <Widget>[
        Row (
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            FloatingActionButton (
              child: Icon( Icons.backspace),
              onPressed: () {},
            ),
            FloatingActionButton (
              child: Icon( Icons.backspace),
              onPressed: () {},
            ),
            FloatingActionButton (
              child: Icon( Icons.backspace),
              onPressed: () {},
            )
          ],
        )
      ],
      floatingActionButton: FloatingActionButton (
        child: Icon( Icons.add),
        onPressed: () {
          print('hola mundo');
        }
      ),
    );
  }

}