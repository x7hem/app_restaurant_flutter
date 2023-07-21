import 'package:app_restaurant_flutter/prefs/shared_pref_controller.dart';
import 'package:app_restaurant_flutter/screen/LoginScreen.dart';
import 'package:app_restaurant_flutter/value/ValueColor.dart';
import 'package:app_restaurant_flutter/widget/ButtonLogin.dart';
import 'package:app_restaurant_flutter/widget/TextField.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  late TextEditingController _nameTextController;
  late TextEditingController _passwordTextController;
  late TextEditingController _phoneTextController;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _nameTextController=TextEditingController();
    _passwordTextController=TextEditingController();
    _phoneTextController=TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _nameTextController.dispose();
    _passwordTextController.dispose();
    _phoneTextController.dispose();
    super.dispose();
  }
  String? _phone;
  String? _name;
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

                                    "الاسم كامل",
                                    controller: _nameTextController,
                                    color: Color(ValueColor.CERULEAN),
                                    colorsEB: Color(ValueColor.CERULEAN),
                                    colorsFB: Color(ValueColor.CERULEAN),
                                    typeText: TextInputType.name,
                                  ),
                                  SizedBox(
                                    height: 25,
                                  ),
                                  EditText(

                                    "الهاتف",
                                    controller: _phoneTextController,
                                    color: Color(ValueColor.CERULEAN),
                                    colorsEB: Color(ValueColor.CERULEAN),
                                    colorsFB: Color(ValueColor.CERULEAN),
                                    typeText: TextInputType.phone,
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
                                child: ButtonLogin( "تسجيل", () =>
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

                                              "لديك حساب ؟",
                                              style: TextStyle(
                                                color: Color(ValueColor.CERULEAN),
                                                fontSize: 16,fontFamily:  'CAREEM',)),
                                          // '/RegisterServiceScreen'
                                          TextButton(
                                            onPressed: () {
                                              Navigator.of(context).push(
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        LoginScreen()
                                                ),
                                              );
                                            },
                                            child: Text(

                                                "تسجيل دخول",
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
    _phone = _phoneTextController.text;
    _password = _passwordTextController.text;
    _name = _nameTextController.text;
    if (_phone!.isEmpty && _password!.isEmpty&& _name!.isEmpty) {
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
      Navigator.of(context).pushReplacementNamed('/LoginScreen');
      var getPhone = _phoneTextController.text;
      var getPassword = _passwordTextController.text;
      MySharedPreferences.instance
          .setStringValue("phone", getPhone);
      MySharedPreferences.instance
          .setStringValue("password", getPassword);
      return true;
    }
  }
}
