import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class RColor {
  RColor._();
  static Color primary = const Color(0xffF6E1CF);
  static Color secondary = HexColor('#3bbdc2');


  static Gradient linerGradient = const LinearGradient(
    begin: Alignment(0, 0),
    end: Alignment(0.707, -0.707),
    colors: [
      Color(0xffff9a9a),
      Color(0xfffad0c4),
      Color(0xfffad0c4),
    ]
  );

  static Color text = const Color(0xFF333333);
  static Color textsecondary = const Color(0xfF6C757D);
  static Color textwhite = Colors.white;

  static Color light = const Color(0xFFF6F6F6);
  static Color dark = const Color(0xFF272727);
  static Color primaryBackground = const Color(0xFFF3F5FF);


  static Color lightContainer = const Color(0xFFF6F6F6);
  static Color darkContainer = RColor.white.withOpacity(0.1);

  static Color buttonPrimary = HexColor('#3bbdc2');
  static Color buttonSecondary = const Color(0xfF6C757D);
  static Color buttonDisabled = const Color(0xfF4C4C4C);


  static Color borderPrimary = const Color(0xffD9D9D9);
  static Color borderSeecondary = const Color(0xFFE6E6E6);


  static Color error = const Color(0xFFD32F2F);
  static Color succes = const Color(0xFF388E3C);
  static Color warning = const Color(0xFFF57C00);
  static Color info = const Color(0xFF1976D2);


  static Color black = const Color(0xFF232323);
  static Color darkerGrey = const Color(0xFF4F4F4F);
  static Color darkGrey = const Color(0xFF939393);
  static Color grey = const Color(0xFFE0E0E0);
  static Color softgrey = const Color(0xFFF4F4F4);
  static Color lightgrey = const Color(0xFFF9F9F9);
  static Color white = const Color(0xFFFFFFFF);


  static Color get primaryLight => const Color(0xffAEDFC7);
  static Color get button => const Color.fromARGB(249, 0, 0, 0);
  static Color get subtitle => const Color(0xff212121);
  static Color get textbutton => const Color(0xffEEEEEF);
  static Color get font => const Color(0xffff8000);
  static Color get selecticon => const Color(0xffff8000);
  static Color get icon => const Color(0xff212121);
  static Color get textColor => const Color(0xFF535353);
  static Color get textLightColor => const Color(0xFFACACAC);
  static Color get cardstore => const Color(0xFFFFECDF);
  static Color get kprimary => const Color(0xFFFF7643);
  static Color get ksecondary => const Color(0xff979797);

  // static List<Color> get button =>
  //     const [Color.fromARGB(255, 110, 116, 113), Color(0xff00FF81)];
}

const defaultPadding = 20.0;

class Fonts {}

const tAnimation = Duration(milliseconds: 200);
