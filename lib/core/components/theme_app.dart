import 'package:currency/core/constants/color_const.dart';
import 'package:flutter/material.dart';

class ThemeAPP {
  static ThemeData light = ThemeData(
    colorScheme: const ColorScheme.light(
      primary: ColorConst.KPrimaryColor,
      brightness: Brightness.light,
    )
  );
  static ThemeData dark = ThemeData(
    colorScheme: const ColorScheme.dark(
      primary: ColorConst.KPrimaryColor,
      brightness: Brightness.dark,
    )
  );
}