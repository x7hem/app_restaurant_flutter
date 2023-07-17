
import 'package:flutter/cupertino.dart';

class BottomNavigation{
   Widget _screen;

   BottomNavigation(this._screen);
   Widget get screen => _screen;

   set screen(Widget value){
     _screen =value;
   }
}