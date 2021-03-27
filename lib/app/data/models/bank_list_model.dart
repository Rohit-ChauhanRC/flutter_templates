// To parse this JSON data, do
//
//     final bankListModel = bankListModelFromJson(jsonString);

import 'dart:convert';

List<BankListModel> bankListModelFromJson(String str) =>
    List<BankListModel>.from(
        json.decode(str).map((x) => BankListModel.fromJson(x)));

String bankListModelToJson(List<BankListModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class BankListModel {
  BankListModel({
    this.scalar,
  });

  String scalar;

  factory BankListModel.fromJson(Map<String, dynamic> json) => BankListModel(
        scalar: json["scalar"],
      );

  Map<String, dynamic> toJson() => {
        "scalar": scalar,
      };
}
