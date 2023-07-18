import 'package:app_restaurant_flutter/item/restaurantItem.dart';
import 'package:app_restaurant_flutter/model/RestaurantModel.dart';
import 'package:app_restaurant_flutter/value/ValueColor.dart';
import 'package:app_restaurant_flutter/widget/TextField.dart';
import 'package:app_restaurant_flutter/widget/TopBarRe.dart';
import 'package:flutter/material.dart';

class RestaurantScreen extends StatefulWidget {
  @override
  State<RestaurantScreen> createState() => _RestaurantScreenState();
}

class _RestaurantScreenState extends State<RestaurantScreen> {
  late TextEditingController _emailTextController;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _emailTextController = TextEditingController();

  }

  @override
  void dispose() {
    // TODO: implement dispose
    _emailTextController.dispose();

    super.dispose();
  }

  List<RestaurantModel> restaurantModel = <RestaurantModel>[
    RestaurantModel("الدار","متخصص مشاوي","3.9","غزة بقرب المالية","0597080000","images/aldar.png"),
    RestaurantModel("ستوري","متخصص شاورما","4.3","غزة احمد عبد العزيز","0597080000","images/story.jpeg"),
    RestaurantModel("ايطاليانو","  متخصص اكلات شعبية وغربية","5.0","غزة النصر","0597080000","images/italiano.png"),

  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(child: Column(
        children: [
          Expanded(
            child: TopBarRe(),
          ),
          Expanded(child: Padding(
            padding: const EdgeInsets.only(top: 15,left: 20,right: 20,bottom: 10),
            child: EditText(

              "اسم المطعم",
              color: Color(ValueColor.ARANG),
              colorsEB: Color(ValueColor.ARANG),
              colorsFB: Color(ValueColor.ARANG),
              typeText: TextInputType.text,
              controller: _emailTextController,
            ),
          ),),
          Expanded(
            flex: 8,
            child: Container(
              child: ListView.builder(itemBuilder: (context,index){
                return restaurantItem(restaurantModel.elementAt(index).name,
                    restaurantModel.elementAt(index).title,
                    restaurantModel.elementAt(index).ps,
                    restaurantModel.elementAt(index).log,
                    restaurantModel.elementAt(index).phn,
                    restaurantModel.elementAt(index).image,
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

