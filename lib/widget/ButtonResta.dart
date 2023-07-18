import 'package:flutter/material.dart';

class ButtonResta extends StatelessWidget {
  const ButtonResta({
    super.key, required this.text, required this.onPressed, required this.color, required this.color2,
  });
  final String text;
  final Function() onPressed;
  final Color color;
  final Color color2;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      child: Text(text, style: TextStyle(fontFamily: 'CAREEM')),
      style: OutlinedButton.styleFrom(
        primary: color,

        side: BorderSide(
          color: color2,
        ),
      ),
      onPressed: onPressed,
    );
  }
}
