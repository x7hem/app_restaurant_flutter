import 'dart:ffi';

import 'package:app_restaurant_flutter/value/ValueColor.dart';
import 'package:flutter/material.dart';

class ListHome extends StatelessWidget {
  const ListHome({
    super.key, required this.title, required this.onPressed,
  });

  final String title;
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title,style: TextStyle(fontSize: 20,color: Color(ValueColor.ARANG),fontFamily: 'CAREEM'),),
        const Spacer(),

        TextButton(onPressed: onPressed,
            child: const Text("عرض الكل",style: TextStyle(fontFamily: 'CAREEM'),)),


      ],
    );
  }
}
