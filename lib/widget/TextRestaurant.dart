import 'package:app_restaurant_flutter/value/ValueColor.dart';
import 'package:flutter/material.dart';

class TextRestaurant extends StatelessWidget {
  const TextRestaurant({
    super.key, required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      SizedBox(width: 20,),
      Text(text,style: TextStyle(fontSize: 20,color: Color(ValueColor.ARANG),fontFamily: 'CAREEM'),),

    ],);
  }
}
