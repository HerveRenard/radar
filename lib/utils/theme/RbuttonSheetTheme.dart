import 'package:flutter/material.dart';

class Rbuttonsheettheme {
  Rbuttonsheettheme._();
  static BottomSheetThemeData lightBottom = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: Colors.white,
    modalBackgroundColor: Colors.white,
    constraints: const BoxConstraints(minHeight: double.infinity),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16)
    ),
  );

  static BottomSheetThemeData darkBottom = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: Colors.black,
    modalBackgroundColor: Colors.black,
    constraints: const BoxConstraints(minHeight: double.infinity),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16)
    ),
  );

}