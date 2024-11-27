import 'package:flutter/material.dart';
class Homne extends StatelessWidget {
  const Homne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('To do app'),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor.withAlpha(200),
        elevation: 0,
      ),
      body: Center(
        child: Container(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
