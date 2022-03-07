import 'package:currency/core/constants/color_const.dart';
import 'package:currency/core/constants/fontSize_const.dart';
import 'package:currency/core/constants/fontWeight.dart';
import 'package:flutter/material.dart';
class Mytext extends StatelessWidget {
  final String text;
  final Color color;
  final FontWeight fontWeight;
  final double size;
  const Mytext({this.fontWeight= FontWeightConst.normal,required this.text,this.color = ColorConst.KPrimaryColor,this.size = FontSizeConst.Medium,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(color: color, fontSize: size, fontWeight: fontWeight),);
  }
}
