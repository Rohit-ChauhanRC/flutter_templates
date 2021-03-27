class RegisterModel {
  List<SignUpModel> data;
  bool status;
  String message;
  bool verified;

  RegisterModel({this.data, this.status, this.message, this.verified});

  RegisterModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = List<SignUpModel>();
      json['data'].forEach((v) {
        data.add(SignUpModel.fromJson(v));
      });
    }
    status = json['status'];
    message = json['message'];
    verified = json['verified'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    data['status'] = this.status;
    data['message'] = this.message;
    data['verified'] = this.verified;
    return data;
  }
}

class SignUpModel {
  int id;
  String firstName;
  String lastName;
  String verificationCode;
  String email;
  dynamic emailVerifiedAt;
  String countryCode;
  String mobile;
  dynamic mobileVerifiedAt;
  dynamic picture;
  int userType;
  String deviceToken;
  int status;
  int visibility;
  List<UserAddressList> userAddressList;
  UserBankDetail userBankDetail;
  UserDetail userDetail;
  UserVehicleDetail userVehicleDetail;

  SignUpModel(
      {this.id,
      this.firstName,
      this.lastName,
      this.verificationCode,
      this.email,
      this.emailVerifiedAt,
      this.countryCode,
      this.mobile,
      this.mobileVerifiedAt,
      this.picture,
      this.userType,
      this.deviceToken,
      this.status,
      this.visibility,
      this.userAddressList,
      this.userBankDetail,
      this.userDetail,
      this.userVehicleDetail});

  SignUpModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    verificationCode = json['verification_code'];
    email = json['email'];
    emailVerifiedAt = json['email_verified_at'];
    countryCode = json['country_code'];
    mobile = json['mobile'];
    mobileVerifiedAt = json['mobile_verified_at'];
    picture = json['picture'];
    userType = json['user_type'];
    deviceToken = json['device_token'];
    status = json['status'];
    visibility = json['visibility'];
    if (json['user_address_list'] != null) {
      userAddressList = List<UserAddressList>();
      json['user_address_list'].forEach((v) {
        userAddressList.add(UserAddressList.fromJson(v));
      });
    }
    userBankDetail = json['user_bank_detail'] != null
        ? UserBankDetail.fromJson(json['user_bank_detail'])
        : null;
    userDetail = json['user_detail'] != null
        ? UserDetail.fromJson(json['user_detail'])
        : null;
    userVehicleDetail = json['user_vehicle_detail'] != null
        ? UserVehicleDetail.fromJson(json['user_vehicle_detail'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = this.id;
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    data['verification_code'] = this.verificationCode;
    data['email'] = this.email;
    data['email_verified_at'] = this.emailVerifiedAt;
    data['country_code'] = this.countryCode;
    data['mobile'] = this.mobile;
    data['mobile_verified_at'] = this.mobileVerifiedAt;
    data['picture'] = this.picture;
    data['user_type'] = this.userType;
    data['device_token'] = this.deviceToken;
    data['status'] = this.status;
    data['visibility'] = this.visibility;
    if (this.userAddressList != null) {
      data['user_address_list'] =
          this.userAddressList.map((v) => v.toJson()).toList();
    }
    if (this.userBankDetail != null) {
      data['user_bank_detail'] = this.userBankDetail.toJson();
    }
    if (this.userDetail != null) {
      data['user_detail'] = this.userDetail.toJson();
    }
    if (this.userVehicleDetail != null) {
      data['user_vehicle_detail'] = this.userVehicleDetail.toJson();
    }
    return data;
  }
}

class UserAddressList {
  int id;
  int userId;
  String name;
  String address;
  String city;
  String state;
  String postalCode;
  Null flatNo;
  Null landmark;
  String latitude;
  String longitude;
  Null addressType;
  Null mobile;
  int defaultStatus;
  int visibility;
  Null deletedAt;
  String createdAt;
  String updatedAt;

  UserAddressList(
      {this.id,
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
      this.updatedAt});

  UserAddressList.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    name = json['name'];
    address = json['address'];
    city = json['city'];
    state = json['state'];
    postalCode = json['postal_code'];
    flatNo = json['flat_no'];
    landmark = json['landmark'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    addressType = json['address_type'];
    mobile = json['mobile'];
    defaultStatus = json['default_status'];
    visibility = json['visibility'];
    deletedAt = json['deleted_at'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = this.id;
    data['user_id'] = this.userId;
    data['name'] = this.name;
    data['address'] = this.address;
    data['city'] = this.city;
    data['state'] = this.state;
    data['postal_code'] = this.postalCode;
    data['flat_no'] = this.flatNo;
    data['landmark'] = this.landmark;
    data['latitude'] = this.latitude;
    data['longitude'] = this.longitude;
    data['address_type'] = this.addressType;
    data['mobile'] = this.mobile;
    data['default_status'] = this.defaultStatus;
    data['visibility'] = this.visibility;
    data['deleted_at'] = this.deletedAt;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}

class UserBankDetail {
  int id;
  int userId;
  String bankName;
  String branchName;
  String accountNumber;
  String ifscCode;
  String createdAt;
  String updatedAt;

  UserBankDetail(
      {this.id,
      this.userId,
      this.bankName,
      this.branchName,
      this.accountNumber,
      this.ifscCode,
      this.createdAt,
      this.updatedAt});

  UserBankDetail.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    bankName = json['bank_name'];
    branchName = json['branch_name'];
    accountNumber = json['account_number'];
    ifscCode = json['ifsc_code'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = this.id;
    data['user_id'] = this.userId;
    data['bank_name'] = this.bankName;
    data['branch_name'] = this.branchName;
    data['account_number'] = this.accountNumber;
    data['ifsc_code'] = this.ifscCode;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}

class UserDetail {
  int id;
  int userId;
  String adhaarCard;
  String dl;
  String dlStartDate;
  String dlEndDate;
  String createdAt;
  String updatedAt;

  UserDetail(
      {this.id,
      this.userId,
      this.adhaarCard,
      this.dl,
      this.dlStartDate,
      this.dlEndDate,
      this.createdAt,
      this.updatedAt});

  UserDetail.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    adhaarCard = json['adhaar_card'];
    dl = json['dl'];
    dlStartDate = json['dl_start_date'];
    dlEndDate = json['dl_end_date'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = this.id;
    data['user_id'] = this.userId;
    data['adhaar_card'] = this.adhaarCard;
    data['dl'] = this.dl;
    data['dl_start_date'] = this.dlStartDate;
    data['dl_end_date'] = this.dlEndDate;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}

class UserVehicleDetail {
  int id;
  int userId;
  String vehicleNumber;
  String vehicleModelNumber;
  String image;
  String color;
  String regStartDate;
  String regEndDate;
  String createdAt;
  String updatedAt;

  UserVehicleDetail(
      {this.id,
      this.userId,
      this.vehicleNumber,
      this.vehicleModelNumber,
      this.image,
      this.color,
      this.regStartDate,
      this.regEndDate,
      this.createdAt,
      this.updatedAt});

  UserVehicleDetail.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    vehicleNumber = json['vehicle_number'];
    vehicleModelNumber = json['vehicle_model_number'];
    image = json['image'];
    color = json['color'];
    regStartDate = json['reg_start_date'];
    regEndDate = json['reg_end_date'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = this.id;
    data['user_id'] = this.userId;
    data['vehicle_number'] = this.vehicleNumber;
    data['vehicle_model_number'] = this.vehicleModelNumber;
    data['image'] = this.image;
    data['color'] = this.color;
    data['reg_start_date'] = this.regStartDate;
    data['reg_end_date'] = this.regEndDate;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
