import 'dart:async';

import 'package:currency/core/components/boxdecoration.dart';
import 'package:currency/core/constants/color_const.dart';
import 'package:currency/core/constants/iconConst.dart';
import 'package:currency/core/constants/radius_const.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(
        Duration(seconds: 5),
        () => Navigator.pushNamedAndRemoveUntil(
            context, '/main', (route) => false));
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               Padding(
                 padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.3),
                 child: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      radius: 100,
                  child: IconConst.logo,
              ),
               ),
              Positioned(
                bottom: MediaQuery.of(context).size.height * 0.6,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.4,
                  width: MediaQuery.of(context).size.width * 0.8,
                  decoration: MyBoxdecoration.decoration(color: ColorConst.backcolor)
                ),
              ),
            ],
          ),
        ),
      ]);
  }
}
