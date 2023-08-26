import 'dart:io';

import 'package:dio/dio.dart';
import 'package:news_app/helpers/constant/constands_resourche.dart';
import 'package:news_app/model/news_model.dart';

import '../model/crypto_model.dart';

class GetMethod {
  static Future<List<NewsModel>> getRequestNews() async {
    List<NewsModel> item = [];
    var response = await Dio().get(Urls.path);
    if (response.statusCode == HttpStatus.ok) {
      var datas = response.data["articles"];

      if (datas is List) {
        return datas.map((e) => NewsModel.fromJson(e)).toList();
      }
    }
    return item;
  }

  static Future<List<CryoptoModel>> getRequestCrypto() async {
    var response = await Dio().get(
      "https://min-api.cryptocompare.com/data/news/feeds?d1e7b035c4c72650cae4111b3c5d55eef4902f76221d02ca06b6297acbde6839",
    );
    if (response.statusCode == HttpStatus.ok) {
      final datas = response.data;
      if (datas is List) {
        return datas.map((e) => CryoptoModel.fromJson(e)).toList();
      }
    }

    return [];
  }
}
