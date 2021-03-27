// To parse this JSON data, do
//
//     final verifyOtpAfterForgotModel = verifyOtpAfterForgotModelFromJson(jsonString);

import 'dart:convert';

VerifyOtpAfterForgotModel verifyOtpAfterForgotModelFromJson(String str) =>
    VerifyOtpAfterForgotModel.fromJson(json.decode(str));

String verifyOtpAfterForgotModelToJson(VerifyOtpAfterForgotModel data) =>
    json.encode(data.toJson());

class VerifyOtpAfterForgotModel {
  VerifyOtpAfterForgotModel({
    this.rememberPasswordToken,
    this.status,
    this.message,
  });

  String rememberPasswordToken;
  bool status;
  String message;

  factory VerifyOtpAfterForgotModel.fromJson(Map<String, dynamic> json) =>
      VerifyOtpAfterForgotModel(
        rememberPasswordToken: json["remember_password_token"],
        status: json["status"],
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "remember_password_token": rememberPasswordToken,
        "status": status,
        "message": message,
      };
}
