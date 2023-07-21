import 'package:app_restaurant_flutter/value/ValueColor.dart';
import 'package:app_restaurant_flutter/widget/ColumReImage.dart';
import 'package:app_restaurant_flutter/widget/ContainerImage.dart';
import 'package:app_restaurant_flutter/widget/TextRestaurant.dart';
import 'package:flutter/material.dart';

class RestaurantSinglScreen extends StatefulWidget {
  const RestaurantSinglScreen({super.key});

  @override
  State<RestaurantSinglScreen> createState() => _RestaurantSinglScreenState();
}

class _RestaurantSinglScreenState extends State<RestaurantSinglScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(ValueColor.ARANG),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 100,horizontal: 20),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            width: double.infinity,
            child: Column(
              children: [
                ColumReImage(),
                SizedBox(height: 25,),
                TextRestaurant(text: "قائمة الطعام"),
                SizedBox(height: 15,),
                TextRestaurant(text: "تجربة الزبائن"),
                SizedBox(height: 15,),
                TextRestaurant(text: "مميزات"),
                SizedBox(height: 15,),
                TextRestaurant(text: "حول"),

              ],
            ),
          ),
        ),
      ),
    );
  }
}



