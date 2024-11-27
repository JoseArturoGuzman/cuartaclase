import 'package:cuartaclase/home.dart';
import 'package:flutter/material.dart';

void main() => runApp(todoApp());

class todoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ' To do App',
      theme: ThemeData(
        primaryColor: Colors.green,
      ),
      home: Homne()
    );
  }
}
