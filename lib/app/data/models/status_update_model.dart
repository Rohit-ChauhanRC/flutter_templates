// To parse this JSON data, do
//
//     final statusUpdateModel = statusUpdateModelFromJson(jsonString);

import 'dart:convert';

StatusUpdateModel statusUpdateModelFromJson(String str) =>
    StatusUpdateModel.fromJson(json.decode(str));

String statusUpdateModelToJson(StatusUpdateModel data) =>
    json.encode(data.toJson());

class StatusUpdateModel {
  StatusUpdateModel({
    this.message,
    this.status,
  });

  String message;
  bool status;

  factory StatusUpdateModel.fromJson(Map<String, dynamic> json) =>
      StatusUpdateModel(
        message: json["message"],
        status: json["status"],
      );

  Map<String, dynamic> toJson() => {
        "message": message,
        "status": status,
      };
}
