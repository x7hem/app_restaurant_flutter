import 'package:flutter/material.dart';

class RowNameReAndIm extends StatelessWidget {
  const   RowNameReAndIm({
    super.key, required this.name, required this.title, required this.ps, required this.image,
  });
  final String name;
  final String title;
  final String ps;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("اسم المطعم : $name", style: TextStyle(color: Colors.white,fontFamily: 'CAREEM',fontSize: 18),),
            Text("وصف : ", style: TextStyle(color: Colors.white,fontFamily: 'CAREEM',fontSize: 18),),
            Text("$title", style: TextStyle(color: Colors.white,fontFamily: 'CAREEM',fontSize: 16),),
            Text("التقيم :$ps ", style: TextStyle(color: Colors.white,fontFamily: 'CAREEM',fontSize: 18),),

          ],
        ),
        Spacer(),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Colors.white,
              width: 3.5,
            ),
          ),
          height: 110,
          width: 100,
          child: Image.asset(
            image,
            fit: BoxFit.fill,
          ),
        ),
      ],
    );
  }
}

