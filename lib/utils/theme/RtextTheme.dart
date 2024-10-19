import 'package:flutter/material.dart';
import 'package:radar/utils/theme/theme.dart';

class Rtexttheme {
  Rtexttheme._();
  static TextTheme lightText =  TextTheme(
    headlineLarge: const TextStyle().copyWith(
      fontSize: 32,
      color: ThemeScreen().textColorLight,
      fontWeight: FontWeight.bold,
    ),
    headlineMedium: const TextStyle().copyWith(
      fontSize: 24,
      color: ThemeScreen().textColorLight,
      fontWeight: FontWeight.w900,
    ),
    headlineSmall: const TextStyle().copyWith(
      fontSize: 18,
      color: ThemeScreen().textColorLight,
      fontWeight: FontWeight.w900,
    ),

    titleLarge: const TextStyle().copyWith(
      fontSize: 16,
      color: ThemeScreen().textColorLight,
      fontWeight: FontWeight.w600,
    ),
    titleMedium: const TextStyle().copyWith(
      fontSize: 16,
      color: ThemeScreen().textColorLight,
      fontWeight: FontWeight.w500,
    ),
    titleSmall: const TextStyle().copyWith(
      fontSize: 16,
      color: ThemeScreen().textColorLight,
      fontWeight: FontWeight.w400,
    ),

    bodyLarge: const TextStyle().copyWith(
      color: ThemeScreen().textColorLight,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
      fontSize: 14,
    ),
    bodyMedium: const TextStyle().copyWith(
      fontSize: 14,
      color: ThemeScreen().textColorLight,
      fontWeight: FontWeight.normal,
    ),
    bodySmall: const TextStyle().copyWith(
      fontSize: 14,
      color: ThemeScreen().textColorLight.withOpacity(0.5),
      fontWeight: FontWeight.w500,
    ),


    labelLarge: const TextStyle().copyWith(
      fontSize: 12,
      color: ThemeScreen().textColorLight,
      fontWeight: FontWeight.normal,
    ),

    labelMedium: const TextStyle().copyWith(
      fontSize: 14,
      color: ThemeScreen().textColorLight.withOpacity(0.5),
      fontWeight: FontWeight.normal,
    ),
  );

    
  static TextTheme darkText = TextTheme(
    headlineLarge: const TextStyle().copyWith(
        fontSize: 32,
        color: ThemeScreen().textColorDark,
        fontWeight: FontWeight.bold,
      ),
      headlineMedium: const TextStyle().copyWith(
        fontSize: 24,
        color: ThemeScreen().textColorDark,
        fontWeight: FontWeight.w900,
    ),
    
    headlineSmall: const TextStyle().copyWith(
      fontSize: 18,
      color: ThemeScreen().textColorDark,
      fontWeight: FontWeight.w900,
    ),

    titleLarge: const TextStyle().copyWith(
      fontSize: 16,
      color: ThemeScreen().textColorDark,
      fontWeight: FontWeight.w600,
    ),
    titleMedium: const TextStyle().copyWith(
      fontSize: 16,
      color: ThemeScreen().textColorDark,
      fontWeight: FontWeight.w500,
    ),
    titleSmall: const TextStyle().copyWith(
      fontSize: 16,
      color: ThemeScreen().textColorDark,
      fontWeight: FontWeight.w400,
    ),

    bodyLarge: const TextStyle().copyWith(
      color: ThemeScreen().textColorDark,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
      fontSize: 14,
    ),
    bodyMedium: const TextStyle().copyWith(
      fontSize: 14,
      color: ThemeScreen().textColorDark,
      fontWeight: FontWeight.normal,
    ),
    bodySmall: const TextStyle().copyWith(
      fontSize: 14,
      color: ThemeScreen().textColorDark.withOpacity(0.5),
      fontWeight: FontWeight.w500,
    ),


    labelLarge: const TextStyle().copyWith(
      fontSize: 12,
      color: ThemeScreen().textColorDark,
      fontWeight: FontWeight.normal,
    ),

    labelMedium: const TextStyle().copyWith(
      fontSize: 14,
      color: ThemeScreen().textColorDark.withOpacity(0.5),
      fontWeight: FontWeight.normal,
    ),
  );
}