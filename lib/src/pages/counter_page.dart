import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  @override
  createState () => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {

  final styleTitle = TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold);
  final styleCount = TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold, color: Color.fromRGBO(0, 0, 0, 0.5));

  int mCount = 0;

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
              Text(mCount.toString(), style: styleCount ),

            ],
          )
      ),
      floatingActionButton: _createButtons()

    );
  }

  Widget _createButtons() {
    return Row (
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox( width: 30.0,),
        FloatingActionButton (
            child: Icon( Icons.adjust),
            onPressed: _resetCount

        ),
        Expanded( child: SizedBox( width: 10.0,) ),
        FloatingActionButton (
            child: Icon( Icons.indeterminate_check_box),
            onPressed: _removeToCount

        ),
        SizedBox( width: 10.0,),
        FloatingActionButton (
            child: Icon( Icons.add ),
            onPressed: _addToCount

        ),
      ],
    );
  }

  void _resetCount() {
    setState(() => mCount = 0 );
  }

  void _removeToCount() {
    setState(() {
      mCount -= 1;
          if (mCount < 0) {
        mCount = 0;
      }
    });
  }

  void _addToCount() {
    setState(() => mCount += 1 );
  }




}