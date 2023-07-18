
import 'package:app_restaurant_flutter/value/ValueColor.dart';
import 'package:flutter/material.dart';

class TopBarRe extends StatelessWidget {
  const TopBarRe({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(ValueColor.ARANG),
        borderRadius: new BorderRadius.vertical(
          bottom: Radius.circular(40),
        ),


      ),
      width: double.infinity,
      height: double.infinity,
      child: Center(
        child:   Text("مطاعمنا",style: TextStyle(fontSize: 25,color: Colors.white,fontFamily: 'CAREEM'),),

      ),
    );
  }
}