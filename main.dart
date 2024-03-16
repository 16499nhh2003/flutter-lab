import 'package:app/ex1.dart';
import 'package:app/ex2.dart';
import 'package:app/ex3.dart';
import 'package:app/ex4.dart';
import 'package:flutter/material.dart';

import 'ex5.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Ex5(),
    );
  }
}
