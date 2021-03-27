// To parse this JSON data, do
//
//     final createPasswordModel = createPasswordModelFromJson(jsonString);

import 'dart:convert';

CreatePasswordModel createPasswordModelFromJson(String str) =>
    CreatePasswordModel.fromJson(json.decode(str));

String createPasswordModelToJson(CreatePasswordModel data) =>
    json.encode(data.toJson());

class CreatePasswordModel {
  CreatePasswordModel({
    this.message,
    this.status,
  });

  String message;
  bool status;

  factory CreatePasswordModel.fromJson(Map<String, dynamic> json) =>
      CreatePasswordModel(
        message: json["message"],
        status: json["status"],
      );

  Map<String, dynamic> toJson() => {
        "message": message,
        "status": status,
      };
}
