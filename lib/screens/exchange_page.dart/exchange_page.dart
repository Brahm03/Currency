import 'package:currency/core/constants/fontSize_const.dart';
import 'package:currency/core/constants/fontWeight.dart';
import 'package:currency/core/constants/iconConst.dart';
import 'package:currency/models/currency_models.dart';
import 'package:currency/widgets/my_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ExchangePage extends StatefulWidget {
  final List<CurrencyModel> data;
  const ExchangePage({required this.data, Key? key}) : super(key: key);
  @override
  State<ExchangePage> createState() => _ExchangePageState();
}

class _ExchangePageState extends State<ExchangePage> {
  String temp1 = 'AUD';
  String temp2 = 'USD';
  TextEditingController textEditingController = TextEditingController();
  double prices = 0.0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DropdownButton(
                  value: temp2,
                  items: List.generate(
                      widget.data.length,
                      (index) => DropdownMenuItem(
                            child: Mytext(
                                text: widget.data[index].code.toString()),
                            value: widget.data[index].code,
                          )),
                  onChanged: (v) {
                      temp2 = v.toString();
                      setState(() {
                      });
                  },
                ),
                const Mytext(text: 'Pick currency'),
                const Icon(CupertinoIcons.right_chevron),
                DropdownButton(
                  value: temp1,
                  items: List.generate(
                      widget.data.length,
                      (index) => DropdownMenuItem(
                            child: Mytext(
                                text: widget.data[index].code.toString()),
                            value: widget.data[index].code,
                          )),
                  onChanged: (v) {
                    temp1 = v.toString();
                    setState(() {
                    });
                  },
                ),
              ],
            )),
        Expanded(
          flex: 10,
          child: Column(
            children: [
              TextFormField(
                keyboardType: TextInputType.number,
                controller: textEditingController,
                decoration: const InputDecoration(labelText: 'Amount'),
                onChanged: (text) {
                  setState(() {
                    Showme(widget.data);
                  });
                },
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.1),
              Mytext(
                text: prices.toString(),
                fontWeight: FontWeightConst.bold,
                size: FontSizeConst.Large,
              ),
              const Spacer(),
              Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.7),
                child: FloatingActionButton(
                    backgroundColor: Colors.transparent,
                    child: IconConst.logo,
                    onPressed: () {
                      setState(() {});
                    }),
              ),
            ],
          ),
        )
      ],
    );
  }

  void Showme(List<CurrencyModel> all) {
    for (var i = 0; i < widget.data.length; i++) {
      for (var j = 0; j < widget.data.length; j++) {
        if (temp1 == widget.data[i].code.toString() &&
            temp2 == widget.data[j].code.toString()) {
          prices = double.parse(textEditingController.text) *
              double.parse(widget.data[i].cbPrice!) /
              double.parse(widget.data[j].cbPrice!);
          setState(() {});
        }
      }
    }
  }
}
