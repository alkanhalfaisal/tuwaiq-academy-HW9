import 'package:course/home.dart';
import 'package:flutter/material.dart';

const appBarColor = Color(0xFF2D6873);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
