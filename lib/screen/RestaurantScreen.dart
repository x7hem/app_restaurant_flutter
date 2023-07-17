import 'package:app_restaurant_flutter/item/restaurantItem.dart';
import 'package:app_restaurant_flutter/model/RestaurantModel.dart';
import 'package:app_restaurant_flutter/value/ValueColor.dart';
import 'package:flutter/material.dart';

class RestaurantScreen extends StatelessWidget {


  List<RestaurantModel> restaurantModel = <RestaurantModel>[
    RestaurantModel("الدار","متخصص اكلات شعبية","3.9","غزة السرايا","0597080000"),
    RestaurantModel("العجلة","متخصص شاورما","4.3","غزة الزيتون","0597080000"),
    RestaurantModel("ايطاليانو","  متخصص اكلات شعبية وغربية","5.0","غزة النصر","0597080000"),

  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(child: Column(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              height: double.infinity,
             color: Color(ValueColor.ARANG),
          ),
          ),
          Expanded(
            flex: 8,
            child: Container(
              child: ListView.builder(itemBuilder: (context,index){
                return restaurantItem(restaurantModel.elementAt(index).name,
                    restaurantModel.elementAt(index).title,
                    restaurantModel.elementAt(index).ps,
                    restaurantModel.elementAt(index).log,
                    restaurantModel.elementAt(index).phn,
                );
              },
                itemCount: restaurantModel.length,
              ),
            ),
          ),
        ],
      )),
    );
  }
}
