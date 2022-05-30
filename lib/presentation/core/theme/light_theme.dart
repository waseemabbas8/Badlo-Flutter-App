import 'package:badlo/presentation/core/utils/screen_util.dart';
import 'package:badlo/presentation/core/values/styles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final lightTheme = ThemeData(
  brightness: Brightness.light,
  fontFamily: GoogleFonts.inter().fontFamily,
  textTheme: _textTheme,
  elevatedButtonTheme: _elevatedButtonTheme,
);

final _textTheme = TextTheme(
  headline4: TextStyle(fontSize: 28.toFont, fontWeight: FontWeight.w600),
  headline5: TextStyle(fontSize: 22.toFont, fontWeight: FontWeight.w600),
  headline6: TextStyle(fontSize: 18.toFont, fontWeight: FontWeight.w600),
  subtitle1: TextStyle(fontSize: 14.toFont, fontWeight: FontWeight.w500),
  subtitle2: TextStyle(fontSize: 15.toFont, fontWeight: FontWeight.w800),
  bodyText1: TextStyle(fontSize: 14.toFont, fontWeight: FontWeight.normal),
  bodyText2: TextStyle(fontSize: 12.toFont, fontWeight: FontWeight.w500),
  caption: TextStyle(fontSize: 10.toFont, fontWeight: FontWeight.normal),
  overline: TextStyle(fontSize: 9.5.toFont, fontWeight: FontWeight.w500),
  button: TextStyle(fontSize: 16.toFont, fontWeight: FontWeight.w500),
);

ElevatedButtonThemeData get _elevatedButtonTheme => ElevatedButtonThemeData(
      style: ButtonStyles.elevatedButtonStyle,
    );
