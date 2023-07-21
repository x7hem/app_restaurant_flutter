import 'package:app_restaurant_flutter/prefs/shared_pref_controller.dart';
import 'package:app_restaurant_flutter/value/ValueColor.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    _mockCheckForSession().then((value) {
      _navigateToHome();
    });
  }

  Future<bool> _mockCheckForSession() async {
    await Future.delayed(Duration(milliseconds: 3000), () {
      _navigateToHome();
    });

    return true;
  }
  bool isLoggedIn = false;

  void _navigateToHome() {
    MySharedPreferences.instance
        .getBooleanValue('login')
        .then((value) => setState(() {
      isLoggedIn = value;
      if (!isLoggedIn) {
        Navigator.of(context).pushReplacementNamed('/WelcomeScreen');
      }else{
        Navigator.of(context).pushReplacementNamed('/ControlScreen');
      }
    }));

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        color: Color(ValueColor.ARANG),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("مطعمنا اقرب",style: TextStyle(fontSize: 40,color: Colors.white,fontFamily: 'CAREEM'),),
            ],
        ),
      ),
    );
  }
}
