import 'package:flutter/material.dart';

// custom
// import 'package:contador/src/pages/home_page.dart';
import 'package:contador/src/pages/counter_page.dart';

class MyApp extends StatelessWidget {

  @override
  Widget build( context ) {

    return MaterialApp (
      debugShowCheckedModeBanner: false,
      home: Center (
        child: CounterPage()
      )
    );
  }
}