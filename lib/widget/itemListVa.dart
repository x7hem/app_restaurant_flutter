import 'package:app_restaurant_flutter/value/ValueColor.dart';
import 'package:flutter/material.dart';

class itemListVa extends StatelessWidget  {
  const itemListVa({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(constraints: const BoxConstraints(
        maxHeight: 80,
        minHeight: 80
    ),

        child: GridView.builder(
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            mainAxisSpacing: 5,
            crossAxisSpacing: 10,
          ),
          itemBuilder: (context,index){
            return Card(
              color: Color(ValueColor.ARANG),
              elevation: 4,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)
              ),
            );
          },
        ));
  }
}
