import 'package:flutter/material.dart';
import 'package:tmdb/view/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TMDB',
      theme: ThemeData.dark(),
      home: Home(),
    );
  }
}
