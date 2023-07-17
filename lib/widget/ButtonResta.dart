import 'package:flutter/material.dart';

class ButtonResta extends StatelessWidget {
  const ButtonResta({
    super.key, required this.text, required this.onPressed,
  });
  final String text;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      child: Text(text, style: TextStyle(fontFamily: 'CAREEM')),
      style: OutlinedButton.styleFrom(
        primary: Colors.white,

        side: BorderSide(
          color: Colors.white,
        ),
      ),
      onPressed: onPressed,
    );
  }
}
