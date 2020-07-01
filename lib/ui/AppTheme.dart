import 'package:flutter/material.dart';

ThemeData AppTheme(){
  final base= ThemeData.dark();
  return base.copyWith(
    primaryColor: Color(0xFF009688),
    scaffoldBackgroundColor: Color(0xFFFFFFFF),
    primaryColorLight: Color(0xFFB2DFDB),
    accentColor: Color(0xFF009688),
    primaryColorDark: Color(0xFF00796B),
    dividerColor: Color(0xFFBDBDBD),
    textTheme: _AppTextTheme(base.textTheme),
    primaryTextTheme: TextTheme(
      headline6: TextStyle(
        fontFamily: 'Lexend Tera',
        color: Colors.white,
        fontSize: 22
      )
    )
  )
  ;
}

TextTheme _AppTextTheme(TextTheme base)
{
  return base.copyWith(
    bodyText1: TextStyle(
      fontFamily: 'Arimo',
      color: Colors.white,
      fontSize: 20
    ),
    bodyText2: TextStyle(
    fontFamily: 'Arimo',
color: Colors.white,
  fontSize: 17
    )

  );
}