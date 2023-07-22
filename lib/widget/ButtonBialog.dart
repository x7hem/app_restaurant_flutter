
import 'package:app_restaurant_flutter/prefs/shared_pref_controller.dart';
import 'package:app_restaurant_flutter/value/ValueColor.dart';
import 'package:app_restaurant_flutter/widget/ButtonResta.dart';
import 'package:flutter/material.dart';

class ButtonBialog extends StatelessWidget {
  const ButtonBialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
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
    );
  }
}