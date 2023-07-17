import 'package:app_restaurant_flutter/item/restaurantItem.dart';
import 'package:app_restaurant_flutter/model/BottomNavigation.dart';
import 'package:app_restaurant_flutter/screen/HomeScreen.dart';
import 'package:app_restaurant_flutter/screen/ProfileScreen.dart';
import 'package:app_restaurant_flutter/screen/RestaurantScreen.dart';
import 'package:app_restaurant_flutter/value/ValueColor.dart';
import 'package:custom_line_indicator_bottom_navbar/custom_line_indicator_bottom_navbar.dart';
import 'package:flutter/material.dart';

class ControlScreen extends StatefulWidget {
  const ControlScreen({super.key});

  @override
  State<ControlScreen> createState() => _ControlScreenState();
}
List<BottomNavigation> bottomNav = <BottomNavigation>[

  BottomNavigation(ProfileScreen()),
  BottomNavigation(HomeScreen()),
  BottomNavigation(RestaurantScreen()),
];

class _ControlScreenState extends State<ControlScreen> {
  int currentIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bottomNav.elementAt(currentIndex).screen,
      bottomNavigationBar: CustomLineIndicatorBottomNavbar(
        selectedColor: Colors.white,
        unSelectedColor: Colors.white,
        currentIndex: currentIndex,
        unselectedIconSize: 30,
        selectedIconSize: 30,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        enableLineIndicator: true,
        lineIndicatorWidth: 3,
        indicatorType: IndicatorType.Top,
        backgroundColor: Color(ValueColor.ARANG),
        customBottomBarItems: [

          CustomBottomBarItems(
              label: 'حساب', icon: Icons.person_outline_rounded),
          CustomBottomBarItems(

            label: 'الرئيسية',
            icon: Icons.home_filled,
          ),
          CustomBottomBarItems(
              label: 'مطاعم',
              icon: Icons.linear_scale_sharp
          ),
        ],
      ),
    );
  }
}
