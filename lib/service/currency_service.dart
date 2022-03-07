import 'package:currency/core/constants/api_const.dart';
import 'package:currency/models/currency_models.dart';
import 'package:dio/dio.dart';

class CurrencyService {
  static Future<List<CurrencyModel>> getCurrency() async {
    Response res = await Dio().get(ApiConst.api);
    return (res.data as List).map((e) => CurrencyModel.fromJson(e)).toList();
  }
}
