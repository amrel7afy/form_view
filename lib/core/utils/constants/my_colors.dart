import 'package:flutter/material.dart';

abstract class MyColors{

  static const  kPrimaryColor=Color(0xffEBB12B);
  static const  kErrorColor=Colors.red;
  static const  kTextColor=Color(0xff153A49);
  static const  kHintTextColor=Color(0xff54565A);


  static const int primaryValue = 0xffEBB12B;
  static const MaterialColor kMapPrimaryColor = MaterialColor(
    primaryValue,
    <int, Color>{
      50: Color(0xfff4c661),
      100: Color(0xffffc23f),
      200: Color(0xffffbf35),
      300: Color(0xfff7b322),
      400: Color(0xffe2a00f),
      500: Color(primaryValue),
      600: Color(0xffe2a00f),
      700: Color(0xffc48b11),
      800: Color(0xffba8514),
      900: Color(0xffaf7d0f),
    },
  );
}