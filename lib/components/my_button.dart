import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({
    super.key,
    required this.ButtonText,
    this.onPressed,
  });
  final String ButtonText;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: Border.all(
        color: Colors.black,
      ),
      onPressed: onPressed,
      child: Text(ButtonText),
      color: Theme.of(context).primaryColor,

    );
  }
}
