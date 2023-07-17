import 'package:app_restaurant_flutter/value/ValueColor.dart';
import 'package:app_restaurant_flutter/widget/BarHome.dart';
import 'package:app_restaurant_flutter/widget/ListHome.dart';
import 'package:app_restaurant_flutter/widget/itemListVa.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget  {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Column(
              children: [

                BarHome(),
                 Expanded(
                   flex: 7,
                   child: Container(
                          child: ListView(
                            physics: const BouncingScrollPhysics(),
                            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                            children: [
                              SizedBox(height: 15,),

                              ListHome(title: "الاعلى تقيم", onPressed: (){}),
                              itemListVa(),
                              SizedBox(height: 20,),

                              ListHome(title: "وجبات مميزة", onPressed: (){}),
                              itemListVa(),
                              SizedBox(height: 20,),

                              ListHome(title: "مطاعمنا", onPressed: (){}),
                              itemListVa(),
                            ],
                          ),
                        ),
                   ),


              ]
          ),
        )
    );
  }
}




