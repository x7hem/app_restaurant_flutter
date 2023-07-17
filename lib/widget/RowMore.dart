import 'package:flutter/material.dart';

class RowMore extends StatelessWidget {
  final String text;
  final Color color;

  RowMore(this.text, {this.color = Colors.black});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 30,
        ),
        Text(
          text,
          style: TextStyle(color: color,fontFamily: 'CAREEM'),
        ),


        Spacer(),
        Icon(
          Icons.navigate_next,
          color: Colors.black38,
        ),
        SizedBox(
          width: 30,
        ),
      ],
    );
  }
}
