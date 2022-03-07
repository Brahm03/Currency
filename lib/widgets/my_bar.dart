import 'package:currency/core/constants/color_const.dart';
import 'package:currency/core/constants/iconConst.dart';
import 'package:flutter/material.dart';

class MyBar extends StatelessWidget {
  var onTap;
  int index;
  MyBar({required this.index,required this.onTap, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: ColorConst.KPrimaryColor,
      onTap: onTap,
      currentIndex: index,
      items: [
        BottomNavigationBarItem(backgroundColor: Colors.white,icon: IconConst.home, label: 'home'),
        BottomNavigationBarItem(backgroundColor: Colors.white,icon: IconConst.info, label: 'exchange'),
        BottomNavigationBarItem(backgroundColor: Colors.white,icon: IconConst.search, label: 'search'),
        BottomNavigationBarItem(backgroundColor: Colors.white,icon: IconConst.setting, label: 'settings'),
      ],
    );
  }
}
