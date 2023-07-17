import 'package:app_restaurant_flutter/screen/RegisterScreen.dart';
import 'package:app_restaurant_flutter/value/ValueColor.dart';
import 'package:app_restaurant_flutter/widget/ButtonLogin.dart';
import 'package:app_restaurant_flutter/widget/TextField.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TextEditingController _emailTextController;

  late TextEditingController _passwordTextController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _emailTextController = TextEditingController();
    _passwordTextController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _emailTextController.dispose();
    _passwordTextController.dispose();
    super.dispose();
  }

  String? _email;

  String? _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(

        child: Container(
          color: Color(ValueColor.ARANG),
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  width: double.infinity,
                  child: Center(child: Text("مطعمنا اقرب",style: TextStyle(fontSize: 30,color: Colors.white,fontFamily: 'CAREEM'),)),
                ),
              ),
              Expanded(
                  flex: 4,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: new BorderRadius.vertical(
                            top: Radius.circular(30))),
                    width: double.infinity,
                    child: Container(
                      margin: EdgeInsets.all(20),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 40),
                              child: Column(
                                children: [
                                  EditText(

                                        "الهاتف",
                                    controller: _emailTextController,
                                    color: Color(ValueColor.CERULEAN),
                                    colorsEB: Color(ValueColor.CERULEAN),
                                    colorsFB: Color(ValueColor.CERULEAN),
                                    typeText: TextInputType.emailAddress,
                                  ),
                                  SizedBox(
                                    height: 25,
                                  ),
                                  EditText(

                                          "كلمة المرور",
                                      controller: _passwordTextController,
                                      obscureText: true,
                                    color: Color(ValueColor.CERULEAN),
                                    colorsEB: Color(ValueColor.CERULEAN),
                                      colorsFB: Color(ValueColor.CERULEAN),)
                                ],
                              ),
                            ),

                            Container(
                              margin: EdgeInsets.only(top: 40),
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 3,
                                    child: ButtonLogin( "تسجيل دخول", () =>
                                        _performOperation(),),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Container(
                                      child: Column(
                                        mainAxisAlignment:
                                        MainAxisAlignment.start,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                        children: [
                                          Text(

                                                  "ليس لديك حساب ؟",
                                              style: TextStyle(
                                                  color: Color(ValueColor.CERULEAN),
                                                  fontSize: 16,fontFamily:  'CAREEM',)),
                                          // '/RegisterServiceScreen'
                                          TextButton(
                                            onPressed: () {
                                              Navigator.of(context).push(
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        RegisterScreen()
                                                ),
                                              );
                                            },
                                            child: Text(

                                                    "تسجيل",
                                                style: TextStyle(
                                                  color: Color(ValueColor.ARANG),
                                                    fontSize: 18,
                                                  fontFamily:  'CAREEM',)),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),

                                ],
                              ),
                            ),
                            Container(
                              height: 100,
                              margin: EdgeInsets.only(top: 50),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.of(context)
                                          .pushReplacementNamed(
                                          '/ControlScreen');
                                    },
                                    child: Row(
                                      children: [
                                        Text(

                                            "ابدا الان",
                                            style: TextStyle(
                                              color: Color(ValueColor.ARANG),
                                              fontSize: 17,
                                              fontWeight: FontWeight.bold,
                                              fontFamily:  'CAREEM',)),
                                        Icon(
                                          Icons.arrow_forward,
                                          size: 20.0,
                                          color: Color(ValueColor.ARANG),
                                        ),


                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }

  void _performOperation() {
    _checkData();
  }

  bool _checkData() {
    _email = _emailTextController.text;
    _password = _emailTextController.text;
    if (_email!.isEmpty && _password!.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text( "الرجاء قم بدخال البيانات !"),
          backgroundColor: Colors.red,
          duration: Duration(seconds: 3),
          behavior: SnackBarBehavior.floating,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),
          ),
        ),
      );
      return false;
    } else {
      Navigator.of(context).pushReplacementNamed('/ControlScreen');
      // var getEmail = _emailTextController.text;
      // MySharedPreferences.instance
      //     .setStringValue("email", getEmail);
      // MySharedPreferences.instance
      //     .setBooleanValue("login", true);
      return true;
    }
  }
}


