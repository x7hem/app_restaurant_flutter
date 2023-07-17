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

  void _navigateToHome() {
    Navigator.of(context).pushReplacementNamed('/WelcomeScreen');
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
