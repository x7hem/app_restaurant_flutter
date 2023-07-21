import 'package:app_restaurant_flutter/prefs/shared_pref_controller.dart';
import 'package:app_restaurant_flutter/value/ValueColor.dart';
import 'package:app_restaurant_flutter/widget/ButtonResta.dart';
import 'package:app_restaurant_flutter/widget/RowMore.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Color(ValueColor.ARANG),
          child: Stack(
            children: [
              Positioned(
                right: 0,
                left: 0,
                top: 150,
                bottom: 0,
                child: Container(
                  color: Colors.white70,
                  height: double.infinity,
                  child: Column(
                    children: [],
                  ),
                ),
              ),

              Positioned(
                right: 0,
                left: 0,
                top: 100,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                      new BorderRadius.vertical(top: Radius.circular(20))),
                  height: 150,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 60,
                      ),
                      Text(
                        "Ibrahim Alegla",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold,fontFamily: 'CAREEM'),
                      ),
                      Text(

                            "غزة,فلسطين",
                        style: TextStyle(fontSize: 14,fontFamily: 'CAREEM'),
                      ),
                    ],
                  ),
                ),
              ),

              Positioned(
                right: 90,
                top: 125,
                child: IconButton(
                    onPressed: () {
                      // Navigator.of(context).pushReplacementNamed('/loginScreen');
                    },
                    icon: Icon(
                      Icons.edit_note_rounded,
                      size: 25,
                      color: Color(ValueColor.CERULEAN),
                    )),
              ),

              Positioned(
                right: 150,
                left: 150,
                top: 50,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.white,
                      width: 3.5,
                    ),
                  ),
                  height: 110,
                  width: 100,
                  child: Image.asset(
                    "images/ibrahim.jpg",
                    fit: BoxFit.fill,
                  ),
                ),
              ),

              Positioned(
                right: 0,
                left: 0,
                top: 260,
                child: Container(
                  color: Colors.white,
                  height: 200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      RowMore(
                        "رقم الهاتف",
                      ),

                      SizedBox(
                        height: 20,
                      ),
                      RowMore(
                         "كلمة السر",
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      RowMore(

                            "العنوان",
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      RowMore(
                         "مشاركة",
                      ),
                    ],
                  ),
                ),
              ),

              Positioned(
                right: 0,
                left: 0,
                top: 470,
                child: Container(
                  color: Colors.white,
                  height: 60,
                  child: TextButton(
                    onPressed: () {
                      //
                      showDialog(context: context,
                          builder: (context)=>SimpleDialog(
                            title: const Text("تسجيل خروج",
                              style: TextStyle(
                                  fontSize: 17, color: Colors.blue,fontFamily: 'CAREEM'),

                            ),

                            contentPadding: const EdgeInsets.all(20),
                            children: [
                              const Text("هل انت متاكد ؟",
                            style: TextStyle(
                                fontSize: 15, color: Colors.black,fontFamily: 'CAREEM'),),
                              SizedBox(height: 20,),
                              Row(
                                children: [
                                  ButtonResta(text: "نعم",onPressed: (){
                                    Navigator.of(context).pushReplacementNamed('/LoginScreen');
                                    MySharedPreferences.instance
                                        .setBooleanValue("login", false);
                                  },color: Colors.red,color2: Colors.red),
                                  Spacer(),
                                  ButtonResta(text: "لا",onPressed: (){
                                    Navigator.of(context).pop();
                                  },color: Colors.blue,color2: Colors.blue),
                                ],
                              ),

                            ],

                          ));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "تسجيل خروج",
                          style: TextStyle(
                              fontSize: 20, color: Colors.blue,fontFamily: 'CAREEM'),
                        ),

                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.exit_to_app,
                          color: Color(ValueColor.GOLD),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              // Positioned(
              //   right: 0,
              //   left: 0,
              //   bottom: 0,
              //   child: Container(
              //     color: Colors.white,
              //     height: 210,
              //
              //     ),
              //   ),
            ],
          ),
        ),
      ),
    );
  }
}
