import 'package:app_restaurant_flutter/value/ValueColor.dart';
import 'package:flutter/material.dart';


class ButtonLogin extends StatelessWidget {
  final String text ;
  final VoidCallback onPressed;

  ButtonLogin(this.text,this.onPressed);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(text,
        style: TextStyle(fontSize: 18,fontFamily:  'CAREEM',),
      ),
      style: ButtonStyle(

        backgroundColor:
        MaterialStateProperty.all(

            Color(ValueColor.ARANG)),

        padding: MaterialStateProperty.all(
          EdgeInsets.symmetric(
              horizontal: 40, vertical: 18),
        ),
        shape: MaterialStateProperty.all(
            RoundedRectangleBorder(

                borderRadius:
                BorderRadius.circular(10))),

      ),

    );
  }

}



