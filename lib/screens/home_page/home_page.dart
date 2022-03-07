import 'package:currency/core/constants/PM_const.dart';
import 'package:currency/data/flag_data.dart';
import 'package:currency/models/currency_models.dart';
import 'package:currency/screens/searchPage./searchPage.dart';
import 'package:currency/widgets/currencies.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<CurrencyModel> currencyModel;
  const HomePage({required this.currencyModel,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: 
             ListView.builder(itemCount: currencyModel.length,itemBuilder: (_, __) {
                return Currencsies(img: FlagData.flagList[__],cb_price: currencyModel[__].cbPrice.toString(),date: currencyModel[__].date.toString().substring(1,8),code: currencyModel[__].code.toString(), title: currencyModel[__].title.toString());
              }),
    );
  }
}
