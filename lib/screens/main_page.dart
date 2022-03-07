import 'package:currency/core/constants/PM_const.dart';
import 'package:currency/core/constants/color_const.dart';
import 'package:currency/core/constants/iconConst.dart';
import 'package:currency/main.dart';
import 'package:currency/models/currency_models.dart';
import 'package:currency/screens/exchange_page.dart/exchange_page.dart';
import 'package:currency/screens/home_page/home_page.dart';
import 'package:currency/screens/searchPage./searchPage.dart';
import 'package:currency/screens/setting/settings_page.dart';
import 'package:currency/service/currency_service.dart';
import 'package:currency/widgets/my_bar.dart';
import 'package:currency/widgets/my_text.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Mytext(text: 'Currency', color: ColorConst.deeppink,),
        titleSpacing: 2,
      ),
      bottomNavigationBar: MyBar(
          index: index,
          onTap: (v) {
            setState(() {
              index = v;
            });
          }),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Expanded(
          child: FutureBuilder(
              future: CurrencyService.getCurrency(),
              builder: ((context, AsyncSnapshot snapshot) {
                if (!snapshot.hasData) {
                  return const Center(
                    child: CircularProgressIndicator.adaptive(),
                  );
                } else if (snapshot.hasError) {
                  return const Center(
                    child: Mytext(text: 'ERROR'),
                  );
                } else {
                  var data = snapshot.data!;
                  List pages = [
                    HomePage(currencyModel: data),
                    ExchangePage(data: data),
                    SearchPage(currencyModel: data),
                    const Settings(),
                  ];
                  return pages[index];
                }
              })),
        ),
      ),
    );
  }
}
