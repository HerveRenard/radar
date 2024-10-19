import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:radar/utils/theme/RappBarTheme.dart';
import 'package:radar/utils/theme/RcheckboxTheme.dart';
import 'package:radar/utils/theme/RelevatedButtonTheme.dart';
import 'package:radar/utils/theme/RinputDecorationTheme.dart';
import 'package:radar/utils/theme/RoutlineButtonTheme.dart';
import 'package:radar/utils/theme/RtextTheme.dart';
class ThemeScreen {

  Color secondary = const Color(0xffB5BFD0);
  Color primary = const Color(0xffffffff);
  Color appbarLight = const Color(0xff212121);
  Color icon = const Color(0xffffffff);

  Color secondaryColor = HexColor('#FF8B6A');
  Color lightprimaryColor = HexColor('#DF0054');
  Color darkprimaryColor = HexColor('#480032');
  Color accent = HexColor('#FFD2BB');

  Color textColorLight = const Color(0xFF333333);
  Color textColorDark= const Color(0xFFFFFFFF);

  Color buttonlight = const Color.fromARGB(249, 0, 0, 0);
  Color buttondark = const Color(0xFFFFFFFF);
  Color get textbuttondark => const Color(0xffEEEEEF);


  static ThemeData lightScrenn = ThemeData(
    fontFamily: 'Poppins',
    useMaterial3: true,
    brightness: Brightness.light,
    textTheme: Rtexttheme.lightText,
    primaryColor: ThemeData.light().scaffoldBackgroundColor,
    colorScheme: const ColorScheme.light().copyWith(
      primary: ThemeScreen().lightprimaryColor,
      secondary: ThemeScreen().secondaryColor,
    ),
    elevatedButtonTheme: Relevatedbuttontheme.lightButton,
    appBarTheme: RappbarTheme.lightAppBar,
    checkboxTheme: Rcheckboxtheme.lightCheckbox,
    inputDecorationTheme: Rinputdecorationtheme.lightInputDecoration,
    outlinedButtonTheme: Routlinebuttontheme.lightOutlineButton,
    
  );


  static ThemeData darkScrenn = ThemeData(
    brightness: Brightness.dark,
    primaryColor: ThemeData.light().scaffoldBackgroundColor,
    colorScheme: const ColorScheme.dark().copyWith(
      primary: ThemeScreen().darkprimaryColor,
      secondary: ThemeScreen().secondaryColor,
    ),
    textTheme: Rtexttheme.darkText,
    textButtonTheme: const TextButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(Colors.white,),
      )
    ),
    elevatedButtonTheme: Relevatedbuttontheme.darkButton,
    appBarTheme: RappbarTheme.darkAppBar,
    inputDecorationTheme: Rinputdecorationtheme.darkInputDecoration,
    outlinedButtonTheme: Routlinebuttontheme.darkOutlineButton,
  );
} 