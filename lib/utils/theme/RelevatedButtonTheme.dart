import 'package:flutter/material.dart';
import 'package:radar/utils/theme/theme.dart';

class Relevatedbuttontheme {
  Relevatedbuttontheme._();
  static final lightButton = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.white,
      backgroundColor: ThemeScreen().buttonlight,
      disabledBackgroundColor: Colors.grey,
      disabledForegroundColor: Colors.grey,
      side: BorderSide(
        color: ThemeScreen().buttonlight,
      ),
      padding: const EdgeInsets.symmetric(vertical: 18),
      textStyle: TextStyle(
        fontSize: 16, 
        color: ThemeScreen().textColorLight, 
        fontWeight: FontWeight.w600 
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12)
      ),
    )
  );
  static final darkButton = ElevatedButtonThemeData(
     style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.white,
      backgroundColor: ThemeScreen().buttondark,
      disabledBackgroundColor: Colors.grey,
      disabledForegroundColor: Colors.grey,
      side: BorderSide(
        color: ThemeScreen().buttonlight,
      ),
      padding: const EdgeInsets.symmetric(vertical: 18),
      textStyle: TextStyle(
        fontSize: 16, 
        color: ThemeScreen().textColorDark, 
        fontWeight: FontWeight.w600 
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12)
      ),
    )
  );
}