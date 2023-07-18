import 'package:app_restaurant_flutter/value/ValueColor.dart';
import 'package:app_restaurant_flutter/widget/ButtonResta.dart';
import 'package:app_restaurant_flutter/widget/RowNameReAndIm.dart';
import 'package:flutter/material.dart';

class restaurantItem extends StatelessWidget {

   String _name;
   String _title;
   String _ps;
   String _log;
   String _phn;
   String _image;
   restaurantItem(this._name, this._title, this._ps, this._log, this._phn, this._image);

  @override
  Widget build(BuildContext context) {
    return  Container(
        decoration: BoxDecoration(
            color: Color(ValueColor.ARANG),
            borderRadius: new BorderRadius.all(Radius.circular(20))),
        margin: EdgeInsets.all(15),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RowNameReAndIm(name: _name,title: _title,ps: _ps,image:_image ,),
              SizedBox(height: 20,),
              Text("العنوان : $_log", style: TextStyle(color: Colors.white,fontFamily: 'CAREEM',fontSize: 18),),
              SizedBox(height: 10,),
              Text("التواصل : $_phn", style: TextStyle(color: Colors.white,fontFamily: 'CAREEM',fontSize: 18),),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    ButtonResta(text: "انستقرام",onPressed: (){},color: Colors.white,color2: Colors.white),
                    Spacer(),
                    ButtonResta(text: "فيس بوك",onPressed: (){},color: Colors.white,color2: Colors.white),
                  ],
                ),
              ),
            ],
          ),
        ),
    );
  }
}


