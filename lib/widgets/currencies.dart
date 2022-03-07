import 'package:currency/core/components/boxdecoration.dart';
import 'package:currency/core/constants/PM_const.dart';
import 'package:currency/core/constants/color_const.dart';
import 'package:currency/core/constants/fontSize_const.dart';
import 'package:currency/core/constants/radius_const.dart';
import 'package:currency/models/currency_models.dart';
import 'package:currency/widgets/my_bar.dart';
import 'package:currency/widgets/my_text.dart';
import 'package:flutter/material.dart';

class Currencsies extends StatelessWidget {
  final String title;
  final String code;
  final String cb_price;
  final String date;
  final String img;
  const Currencsies(
      {required this.img,required this.date,required this.cb_price,
      required this.code,
      required this.title,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      height: MediaQuery.of(context).size.height * 0.080,
      width: MediaQuery.of(context).size.width * 0.8,
      decoration: MyBoxdecoration.decoration(),
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(img),
          radius: RadiusConst.Large,
          backgroundColor: ColorConst.backcolor,
        ),
        title: Mytext(
          text: code,
          color: ColorConst.backcolor,
        ),
        subtitle: Mytext(
          text: title,
          color: ColorConst.backcolor,
        ),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [Mytext(text: cb_price, color: ColorConst.deeppink, size: FontSizeConst.Medium,),
            Mytext(text: date.toString(), color: ColorConst.KPrimaryColor, size: FontSizeConst.Small,)
          ],
        ),
      ),
    );
  }
}
