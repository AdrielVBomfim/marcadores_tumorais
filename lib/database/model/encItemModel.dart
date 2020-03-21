// To parse this JSON data, do
//
//     final encItem = encItemFromJson(jsonString);

import 'dart:convert';

EncItem encItemFromJson(String str) => EncItem.fromJson(json.decode(str));

String encItemToJson(EncItem data) => json.encode(data.toJson());

class EncItem {
  String type;
  String title;
  String cancerTypes;
  String analysisObj;
  String usedFor;

  EncItem({
    this.type,
    this.title,
    this.cancerTypes,
    this.analysisObj,
    this.usedFor
  });

  factory EncItem.fromJson(Map<String, dynamic> json) => EncItem(
    type: json["type"],
    title: json["title"],
    cancerTypes: json["cancerTypes"],
    analysisObj: json["analysisObj"],
    usedFor: json["usedFor"]
  );

  Map<String, dynamic> toJson() => {
    "type": type,
    "title": title,
    "cancerTypes": cancerTypes,
    "analysisObj": analysisObj,
    "usedFor": usedFor
  };
}
