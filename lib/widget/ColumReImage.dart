import 'package:app_restaurant_flutter/value/ValueColor.dart';
import 'package:app_restaurant_flutter/widget/ContainerImage.dart';
import 'package:flutter/material.dart';

class ColumReImage extends StatelessWidget {
  const ColumReImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 25,bottom: 15),
          child: ContainerImage(),
        ),
        Text("ستوري",style: TextStyle(fontSize: 20,color: Color(ValueColor.ARANG),fontFamily: 'CAREEM'),),
        SizedBox(height: 10,),
        Image.asset("images/ratinng.png",scale: 12,),
        SizedBox(height: 5,),
        Text("4.0%",style: TextStyle(fontSize: 20,color: Color(ValueColor.ARANG),fontFamily: 'CAREEM'),),

      ],
    );
  }
}
