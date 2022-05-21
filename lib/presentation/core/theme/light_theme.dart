import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final lightTheme = ThemeData(
  brightness: Brightness.light,
  fontFamily: GoogleFonts.inter().fontFamily,
    textTheme: _textTheme,
);

const _textTheme = TextTheme(
  headline4: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w600),
  headline5: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w600),
  headline6: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600),
  subtitle1: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
  subtitle2: TextStyle(fontSize: 15, fontWeight: FontWeight.w800),
  bodyText1: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
  bodyText2: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
  caption: TextStyle(fontSize: 10, fontWeight: FontWeight.normal),
  overline: TextStyle(fontSize: 9.5, fontWeight: FontWeight.w500),
  button: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
);
