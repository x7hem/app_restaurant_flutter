import 'package:app_restaurant_flutter/value/ValueColor.dart';
import 'package:flutter/material.dart';

class BarHome extends StatelessWidget {
  const BarHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(ValueColor.ARANG),
          borderRadius: new BorderRadius.vertical(
            bottom: Radius.circular(60),
          ),


        ),
        child:
        Stack(
          children: [
            Positioned(
              right:25,
              top: 25,
              child: Image.asset('images/Shape.png',
              ),),
            Column(
              children: [
                SizedBox(height: 25,),
                Text("مطعمنا اقرب",style: TextStyle(fontSize: 25,color: Colors.white,fontFamily: 'CAREEM'),),
                SizedBox(height: 10,),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),),
                  margin: EdgeInsets.only(left: 60,right: 60,bottom: 50),
                  height: 100,
                  width: double.infinity,
                ),
              ],
            ),

          ],
        ),

      ),
    );
  }
}