import 'package:app_restaurant_flutter/screen/ControlScreen.dart';
import 'package:app_restaurant_flutter/screen/HomeScreen.dart';
import 'package:app_restaurant_flutter/screen/LoginScreen.dart';
import 'package:app_restaurant_flutter/screen/RegisterScreen.dart';
import 'package:app_restaurant_flutter/screen/RestaurantSinglScreen.dart';
import 'package:app_restaurant_flutter/screen/SplashScreen.dart';
import 'package:app_restaurant_flutter/screen/welcomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter/services.dart';


void main() {
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Color(0xffE57C23),
      )
  );
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate
        ],
        supportedLocales: [
          Locale("ar"),

        ],
        initialRoute:'/SplashScreen',
        routes: {

          '/SplashScreen':(context)=>SplashScreen(),
          '/HomeScreen':(context)=>HomeScreen(),
          '/WelcomeScreen':(context)=>WelcomeScreen(),
          '/LoginScreen':(context)=>LoginScreen(),
          '/RegisterScreen':(context)=>RegisterScreen(),
          '/ControlScreen':(context)=>ControlScreen(),
          '/RestaurantSinglScreen':(context)=>RestaurantSinglScreen(),

        }
    );
  }
}


