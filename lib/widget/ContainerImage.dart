import 'package:app_restaurant_flutter/value/ValueColor.dart';
import 'package:flutter/material.dart';

class ContainerImage extends StatelessWidget {
  const ContainerImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Color(ValueColor.ARANG),
          width: 3.5,
        ),
      ),
      height: 110,
      width: 100,
      child: Image.asset("images/story.jpeg",
        fit: BoxFit.fill,
      ),
    );
  }
}
