import 'package:app_restaurant_flutter/prefs/shared_pref_controller.dart';
import 'package:app_restaurant_flutter/value/ValueColor.dart';
import 'package:app_restaurant_flutter/widget/ButtonBialog.dart';
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
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'CAREEM'),
                      ),
                      Text(
                        "غزة,فلسطين",
                        style: TextStyle(fontSize: 14, fontFamily: 'CAREEM'),
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
                  child: ButtonBialog(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
