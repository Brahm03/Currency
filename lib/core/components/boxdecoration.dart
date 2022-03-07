import 'package:currency/core/constants/color_const.dart';
import 'package:currency/core/constants/radius_const.dart';
import 'package:flutter/material.dart';

class MyBoxdecoration {
  static decoration({Color color = ColorConst.darkblue}) {
    return BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(RadiusConst.Medium)
    );
  }
}
