// To parse this JSON data, do
//
//     final verifyOtpModel = verifyOtpModelFromJson(jsonString);

import 'dart:convert';

VerifyOtpModel verifyOtpModelFromJson(String str) =>
    VerifyOtpModel.fromJson(json.decode(str));

String verifyOtpModelToJson(VerifyOtpModel data) => json.encode(data.toJson());

class VerifyOtpModel {
  VerifyOtpModel({
    this.data,
    this.status,
    this.message,
    this.rememberPasswordToken,
  });

  Data data;
  bool status;
  String message;
  String rememberPasswordToken;

  factory VerifyOtpModel.fromJson(Map<String, dynamic> json) => VerifyOtpModel(
        data: Data.fromJson(json["data"]),
        status: json["status"],
        message: json["message"],
        rememberPasswordToken: json["remember_password_token"],
      );

  Map<String, dynamic> toJson() => {
        "data": data.toJson(),
        "status": status,
        "message": message,
        "remember_password_token": rememberPasswordToken,
      };
}

class Data {
  Data({
    this.id,
    this.firstName,
    this.countryCode,
    this.mobile,
    this.picture,
    this.userType,
    this.deviceToken,
    this.status,
    this.visibility,
    this.accessToken,
    this.rememberPasswordToken,
  });

  int id;
  String firstName;
  String countryCode;
  String mobile;
  dynamic picture;
  int userType;
  String deviceToken;
  int status;
  int visibility;
  String accessToken;
  String rememberPasswordToken;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"],
        firstName: json["first_name"],
        countryCode: json["country_code"],
        mobile: json["mobile"],
        picture: json["picture"],
        userType: json["user_type"],
        deviceToken: json["device_token"],
        status: json["status"],
        visibility: json["visibility"],
        accessToken: json["access_token"],
        rememberPasswordToken: json['remember_password_token'],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "first_name": firstName,
        "country_code": countryCode,
        "mobile": mobile,
        "picture": picture,
        "user_type": userType,
        "device_token": deviceToken,
        "status": status,
        "visibility": visibility,
        "access_token": accessToken,
        'remember_password_token': rememberPasswordToken,
      };
}
