// To parse this JSON data, do
//
//     final cryoptoModel = cryoptoModelFromJson(jsonString);

import 'dart:convert';

CryoptoModel cryoptoModelFromJson(String str) =>
    CryoptoModel.fromJson(json.decode(str));

String cryoptoModelToJson(CryoptoModel data) => json.encode(data.toJson());

class CryoptoModel {
  String? key;
  String? name;
  String? img;
  String? lang;

  CryoptoModel({
    this.key,
    this.name,
    this.img,
    this.lang,
  });

  factory CryoptoModel.fromJson(Map<String, dynamic> json) => CryoptoModel(
        key: json["key"],
        name: json["name"],
        img: json["img"],
        lang: json["lang"],
      );

  Map<String, dynamic> toJson() => {
        "key": key,
        "name": name,
        "img": img,
        "lang": lang,
      };
}
