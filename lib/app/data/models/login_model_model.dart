// To parse this JSON data, do
//
//     final loginModel = loginModelFromJson(jsonString);

import 'dart:convert';

LoginModel loginModelFromJson(String str) =>
    LoginModel.fromJson(json.decode(str));

String loginModelToJson(LoginModel data) => json.encode(data.toJson());

class LoginModel {
  LoginModel({
    this.verified,
    this.data,
    this.message,
    this.status,
  });

  bool verified;
  Data data;
  String message;
  bool status;

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
        verified: json["verified"],
        data: json['data'] != null ? Data.fromJson(json["data"]) : null,
        message: json["message"],
        status: json["status"],
      );

  Map<String, dynamic> toJson() => {
        "verified": verified,
        "data": data.toJson(),
        "message": message,
        "status": status,
      };
}

class Data {
  Data({
    this.id,
    this.firstName,
    this.verificationCode,
    this.countryCode,
    this.mobile,
    this.picture,
    this.userType,
    this.deviceToken,
    this.status,
    this.visibility,
    this.accessToken,
    this.userAddressList,
    this.userBankDetail,
    this.userDetail,
    this.userVehicleDetail,
  });

  int id;
  String firstName;
  dynamic verificationCode;
  String countryCode;
  String mobile;
  dynamic picture;
  int userType;
  String deviceToken;
  int status;
  int visibility;

  String accessToken;
  List<UserAddressList> userAddressList;
  UserBankDetail userBankDetail;
  UserDetail userDetail;
  UserVehicleDetail userVehicleDetail;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"],
        firstName: json["first_name"] ?? "",
        verificationCode: json["verification_code"] ?? '',
        countryCode: json["country_code"] ?? '',
        mobile: json["mobile"] ?? '',
        picture: json["picture"] ?? "",
        userType: json["user_type"],
        deviceToken: json["device_token"],
        status: json["status"],
        visibility: json["visibility"],
        accessToken: json["access_token"],
        userAddressList: List<UserAddressList>.from(
            json["user_address_list"].map((x) => UserAddressList.fromJson(x))),
        userBankDetail: UserBankDetail.fromJson(json["user_bank_detail"]),
        userDetail: UserDetail.fromJson(json["user_detail"]),
        userVehicleDetail:
            UserVehicleDetail.fromJson(json["user_vehicle_detail"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "first_name": firstName,
        "verification_code": verificationCode,
        "country_code": countryCode,
        "mobile": mobile,
        "picture": picture,
        "user_type": userType,
        "device_token": deviceToken,
        "status": status,
        "visibility": visibility,
        "access_token": accessToken,
        "user_address_list":
            List<dynamic>.from(userAddressList.map((x) => x.toJson())),
        "user_bank_detail": userBankDetail.toJson(),
        "user_detail": userDetail.toJson(),
        "user_vehicle_detail": userVehicleDetail.toJson(),
      };
}

class UserAddressList {
  UserAddressList({
    this.id,
    this.userId,
    this.name,
    this.address,
    this.city,
    this.state,
    this.postalCode,
    this.flatNo,
    this.landmark,
    this.latitude,
    this.longitude,
    this.addressType,
    this.mobile,
    this.defaultStatus,
    this.visibility,
    this.deletedAt,
    this.createdAt,
    this.updatedAt,
  });

  int id;
  int userId;
  dynamic name;
  String address;
  String city;
  String state;
  String postalCode;
  dynamic flatNo;
  dynamic landmark;
  String latitude;
  String longitude;
  dynamic addressType;
  dynamic mobile;
  int defaultStatus;
  int visibility;
  dynamic deletedAt;
  DateTime createdAt;
  DateTime updatedAt;

  factory UserAddressList.fromJson(Map<String, dynamic> json) =>
      UserAddressList(
        id: json["id"],
        userId: json["user_id"],
        name: json["name"],
        address: json["address"],
        city: json["city"],
        state: json["state"],
        postalCode: json["postal_code"],
        flatNo: json["flat_no"],
        landmark: json["landmark"],
        latitude: json["latitude"],
        longitude: json["longitude"],
        addressType: json["address_type"],
        mobile: json["mobile"],
        defaultStatus: json["default_status"],
        visibility: json["visibility"],
        deletedAt: json["deleted_at"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "user_id": userId,
        "name": name,
        "address": address,
        "city": city,
        "state": state,
        "postal_code": postalCode,
        "flat_no": flatNo,
        "landmark": landmark,
        "latitude": latitude,
        "longitude": longitude,
        "address_type": addressType,
        "mobile": mobile,
        "default_status": defaultStatus,
        "visibility": visibility,
        "deleted_at": deletedAt,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}

class UserBankDetail {
  UserBankDetail({
    this.id,
    this.userId,
    this.bankName,
    this.branchName,
    this.accountNumber,
    this.ifscCode,
    this.createdAt,
    this.updatedAt,
  });

  int id;
  int userId;
  String bankName;
  String branchName;
  String accountNumber;
  String ifscCode;
  DateTime createdAt;
  DateTime updatedAt;

  factory UserBankDetail.fromJson(Map<String, dynamic> json) => UserBankDetail(
        id: json["id"],
        userId: json["user_id"],
        bankName: json["bank_name"],
        branchName: json["branch_name"],
        accountNumber: json["account_number"],
        ifscCode: json["ifsc_code"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "user_id": userId,
        "bank_name": bankName,
        "branch_name": branchName,
        "account_number": accountNumber,
        "ifsc_code": ifscCode,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}

class UserDetail {
  UserDetail({
    this.id,
    this.userId,
    this.adhaarCard,
    this.dl,
    this.dlStartDate,
    this.dlEndDate,
    this.createdAt,
    this.updatedAt,
  });

  int id;
  int userId;
  String adhaarCard;
  String dl;
  DateTime dlStartDate;
  DateTime dlEndDate;
  DateTime createdAt;
  DateTime updatedAt;

  factory UserDetail.fromJson(Map<String, dynamic> json) => UserDetail(
        id: json["id"],
        userId: json["user_id"],
        adhaarCard: json["adhaar_card"],
        dl: json["dl"],
        dlStartDate: DateTime.parse(json["dl_start_date"]),
        dlEndDate: DateTime.parse(json["dl_end_date"]),
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "user_id": userId,
        "adhaar_card": adhaarCard,
        "dl": dl,
        "dl_start_date":
            "${dlStartDate.year.toString().padLeft(4, '0')}-${dlStartDate.month.toString().padLeft(2, '0')}-${dlStartDate.day.toString().padLeft(2, '0')}",
        "dl_end_date":
            "${dlEndDate.year.toString().padLeft(4, '0')}-${dlEndDate.month.toString().padLeft(2, '0')}-${dlEndDate.day.toString().padLeft(2, '0')}",
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}

class UserVehicleDetail {
  UserVehicleDetail({
    this.id,
    this.userId,
    this.vehicleNumber,
    this.vehicleModelNumber,
    this.image,
    this.color,
    this.regStartDate,
    this.regEndDate,
    this.createdAt,
    this.updatedAt,
  });

  int id;
  int userId;
  String vehicleNumber;
  String vehicleModelNumber;
  String image;
  String color;
  DateTime regStartDate;
  DateTime regEndDate;
  DateTime createdAt;
  DateTime updatedAt;

  factory UserVehicleDetail.fromJson(Map<String, dynamic> json) =>
      UserVehicleDetail(
        id: json["id"],
        userId: json["user_id"],
        vehicleNumber: json["vehicle_number"],
        vehicleModelNumber: json["vehicle_model_number"],
        image: json["image"],
        color: json["color"],
        regStartDate: DateTime.parse(json["reg_start_date"]),
        regEndDate: DateTime.parse(json["reg_end_date"]),
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "user_id": userId,
        "vehicle_number": vehicleNumber,
        "vehicle_model_number": vehicleModelNumber,
        "image": image,
        "color": color,
        "reg_start_date":
            "${regStartDate.year.toString().padLeft(4, '0')}-${regStartDate.month.toString().padLeft(2, '0')}-${regStartDate.day.toString().padLeft(2, '0')}",
        "reg_end_date":
            "${regEndDate.year.toString().padLeft(4, '0')}-${regEndDate.month.toString().padLeft(2, '0')}-${regEndDate.day.toString().padLeft(2, '0')}",
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}
