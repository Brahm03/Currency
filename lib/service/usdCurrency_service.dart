import 'package:currency/core/constants/api_const.dart';
import 'package:currency/models/usdcurrency_models.dart';
import 'package:dio/dio.dart';

class USDCURENCYSERVICE {
  Future<UsdModel> getUsd() async {
    Response res = await Dio().get(ApiConst.usdapi);
    return UsdModel.fromJson(res.data);
  }
}
