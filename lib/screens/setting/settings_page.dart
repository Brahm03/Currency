import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:currency/core/constants/fontSize_const.dart';
import 'package:currency/core/constants/fontWeight.dart';
import 'package:currency/widgets/my_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  String mode = 'Night mode';
  bool _isDark = false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Mytext(text: mode, size: FontSizeConst.ExtraLarge,fontWeight: FontWeightConst.w3,),
          Switch.adaptive(
              value: _isDark,
              onChanged: (v) {
                _isDark = v;
                if (_isDark) {
                  AdaptiveTheme.of(context).setDark();
                  mode = 'light mode';
                } else {
                  AdaptiveTheme.of(context).setLight();
                  mode = 'dark mode';
                }
                setState(() {});
              })
        ],
      ),
    );
  }
}
