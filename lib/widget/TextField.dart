
import 'package:flutter/material.dart';

class EditText extends StatelessWidget {
  final String text ;
  final TextEditingController controller ;
  final Color color ;
  final bool obscureText ;
  final TextInputType typeText ;
  final Color colorsEB ;
  final Color colorsFB ;


    EditText(this.text ,{required this.controller,this.color = Colors.black26
    , this.obscureText =false,
    this.typeText =TextInputType.text,
    this.colorsEB= Colors.black26,
    this.colorsFB =Colors.amber
  });
  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlign: TextAlign.right,
      controller: controller,
      obscureText: obscureText, //اخفاء كلمة المرور
      keyboardType:typeText ,
      decoration: InputDecoration(
        // prefixIcon : Icon(Icons.remove_red_eye,color: Colors.black26),
        // labelText: text,
        label: Text(text),

        labelStyle: TextStyle(

          color: color,
          fontFamily:  'CAREEM',
          fontSize: 16,
        ),

        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 1,color: colorsEB)
        ),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 1,color: colorsFB)
        ),

      ),
    );
  }
}
