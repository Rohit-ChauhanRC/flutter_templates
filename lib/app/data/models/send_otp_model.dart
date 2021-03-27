// To parse this JSON data, do
//
//     final sendOtpModel = sendOtpModelFromJson(jsonString);

import 'dart:convert';

SendOtpModel sendOtpModelFromJson(String str) =>
    SendOtpModel.fromJson(json.decode(str));

String sendOtpModelToJson(SendOtpModel data) => json.encode(data.toJson());

class SendOtpModel {
  SendOtpModel({
    this.otp,
    this.message,
    this.status,
  });

  int otp;
  String message;
  bool status;

  factory SendOtpModel.fromJson(Map<String, dynamic> json) => SendOtpModel(
        otp: json["otp"],
        message: json["message"],
        status: json["status"],
      );

  Map<String, dynamic> toJson() => {
        "otp": otp,
        "message": message,
        "status": status,
      };
}
