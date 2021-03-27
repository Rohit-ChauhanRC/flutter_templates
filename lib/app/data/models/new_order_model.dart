// To parse this JSON data, do
//
//     final newOrderModel = newOrderModelFromJson(jsonString);

import 'dart:convert';

NewOrderModel newOrderModelFromJson(String str) =>
    NewOrderModel.fromJson(json.decode(str));

String newOrderModelToJson(NewOrderModel data) => json.encode(data.toJson());

class NewOrderModel {
  NewOrderModel({
    this.data,
    this.message,
    this.status,
  });

  List<NewOrderData> data;
  String message;
  bool status;

  factory NewOrderModel.fromJson(Map<String, dynamic> json) => NewOrderModel(
        data: List<NewOrderData>.from(
            json["data"].map((x) => NewOrderData.fromJson(x))),
        message: json["message"],
        status: json["status"],
      );

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "message": message,
        "status": status,
      };
}

class NewOrderData {
  NewOrderData({
    this.id,
    this.userId,
    this.storeId,
    this.cartId,
    this.addressId,
    this.orderId,
    this.customerName,
    this.orderedMenu,
    this.mobile,
    this.totalAmount,
    this.serviceTax,
    this.serviceCommission,
    this.deliveryFee,
    this.tax,
    this.orderStatus,
    this.paymentStatus,
    this.paymentType,
    this.visibility,
    this.deletedAt,
    this.createdAt,
    this.updatedAt,
    this.orderStatusString,
    this.paymentStatusString,
    this.paymentTypeString,
    this.customerDetails,
    this.deliveryAddress,
    this.storeDetails,
  });

  int id;
  int userId;
  int storeId;
  int cartId;
  int addressId;
  String orderId;
  dynamic customerName;
  OrderedMenu orderedMenu;
  String mobile;
  String totalAmount;
  String serviceTax;
  String serviceCommission;
  String deliveryFee;
  String tax;
  int orderStatus;
  int paymentStatus;
  int paymentType;
  int visibility;
  dynamic deletedAt;
  DateTime createdAt;
  DateTime updatedAt;
  String orderStatusString;
  String paymentStatusString;
  String paymentTypeString;
  CustomerDetails customerDetails;
  DeliveryAddress deliveryAddress;
  StoreDetails storeDetails;

  factory NewOrderData.fromJson(Map<String, dynamic> json) => NewOrderData(
        id: json["id"],
        userId: json["user_id"],
        storeId: json["store_id"],
        cartId: json["cart_id"],
        addressId: json["address_id"],
        orderId: json["order_id"],
        customerName: json["customer_name"],
        orderedMenu: OrderedMenu.fromJson(json["ordered_menu"]),
        mobile: json["mobile"],
        totalAmount: json["total_amount"],
        serviceTax: json["service_tax"],
        serviceCommission: json["service_commission"],
        deliveryFee: json["delivery_fee"],
        tax: json["tax"],
        orderStatus: json["order_status"],
        paymentStatus: json["payment_status"],
        paymentType: json["payment_type"],
        visibility: json["visibility"],
        deletedAt: json["deleted_at"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        orderStatusString: json["order_status_string"],
        paymentStatusString: json["payment_status_string"],
        paymentTypeString: json["payment_type_string"],
        customerDetails: CustomerDetails.fromJson(json["customer_details"]),
        deliveryAddress: DeliveryAddress.fromJson(json["delivery_address"]),
        storeDetails: StoreDetails.fromJson(json["store_details"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "user_id": userId,
        "store_id": storeId,
        "cart_id": cartId,
        "address_id": addressId,
        "order_id": orderId,
        "customer_name": customerName,
        "ordered_menu": orderedMenu.toJson(),
        "mobile": mobile,
        "total_amount": totalAmount,
        "service_tax": serviceTax,
        "service_commission": serviceCommission,
        "delivery_fee": deliveryFee,
        "tax": tax,
        "order_status": orderStatus,
        "payment_status": paymentStatus,
        "payment_type": paymentType,
        "visibility": visibility,
        "deleted_at": deletedAt,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "order_status_string": orderStatusString,
        "payment_status_string": paymentStatusString,
        "payment_type_string": paymentTypeString,
        "customer_details": customerDetails.toJson(),
        "delivery_address": deliveryAddress.toJson(),
        "store_details": storeDetails.toJson(),
      };
}

class CustomerDetails {
  CustomerDetails({
    this.id,
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
    this.logedInDevice,
    this.lastLogin,
  });

  int id;
  String firstName;
  String lastName;
  dynamic verificationCode;
  String email;
  dynamic emailVerifiedAt;
  String countryCode;
  String mobile;
  DateTime mobileVerifiedAt;
  dynamic picture;
  int userType;
  String deviceToken;
  int status;
  int visibility;
  dynamic logedInDevice;
  dynamic lastLogin;

  factory CustomerDetails.fromJson(Map<String, dynamic> json) =>
      CustomerDetails(
        id: json["id"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        verificationCode: json["verification_code"],
        email: json["email"],
        emailVerifiedAt: json["email_verified_at"],
        countryCode: json["country_code"],
        mobile: json["mobile"],
        mobileVerifiedAt: DateTime.parse(json["mobile_verified_at"]),
        picture: json["picture"],
        userType: json["user_type"],
        deviceToken: json["device_token"],
        status: json["status"],
        visibility: json["visibility"],
        logedInDevice: json["loged_in_device"],
        lastLogin: json["last_login"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "first_name": firstName,
        "last_name": lastName,
        "verification_code": verificationCode,
        "email": email,
        "email_verified_at": emailVerifiedAt,
        "country_code": countryCode,
        "mobile": mobile,
        "mobile_verified_at": mobileVerifiedAt.toIso8601String(),
        "picture": picture,
        "user_type": userType,
        "device_token": deviceToken,
        "status": status,
        "visibility": visibility,
        "loged_in_device": logedInDevice,
        "last_login": lastLogin,
      };
}

class DeliveryAddress {
  DeliveryAddress({
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
  String name;
  String address;
  String city;
  String state;
  String postalCode;
  String flatNo;
  String landmark;
  String latitude;
  String longitude;
  String addressType;
  String mobile;
  int defaultStatus;
  int visibility;
  dynamic deletedAt;
  DateTime createdAt;
  DateTime updatedAt;

  factory DeliveryAddress.fromJson(Map<String, dynamic> json) =>
      DeliveryAddress(
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

class OrderedMenu {
  OrderedMenu({
    this.id,
    this.userId,
    this.storeId,
    this.addressId,
    this.createdAt,
    this.deletedAt,
    this.updatedAt,
    this.visibility,
    this.appliedCoupon,
    this.productCartMenu,
  });

  int id;
  int userId;
  int storeId;
  dynamic addressId;
  DateTime createdAt;
  dynamic deletedAt;
  DateTime updatedAt;
  int visibility;
  dynamic appliedCoupon;
  List<ProductCartMenu> productCartMenu;

  factory OrderedMenu.fromJson(Map<String, dynamic> json) => OrderedMenu(
        id: json["id"],
        userId: json["user_id"],
        storeId: json["store_id"],
        addressId: json["address_id"],
        createdAt: DateTime.parse(json["created_at"]),
        deletedAt: json["deleted_at"],
        updatedAt: DateTime.parse(json["updated_at"]),
        visibility: json["visibility"],
        appliedCoupon: json["applied_coupon"],
        productCartMenu: List<ProductCartMenu>.from(
            json["product_cart_menu"].map((x) => ProductCartMenu.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "user_id": userId,
        "store_id": storeId,
        "address_id": addressId,
        "created_at": createdAt.toIso8601String(),
        "deleted_at": deletedAt,
        "updated_at": updatedAt.toIso8601String(),
        "visibility": visibility,
        "applied_coupon": appliedCoupon,
        "product_cart_menu":
            List<dynamic>.from(productCartMenu.map((x) => x.toJson())),
      };
}

class ProductCartMenu {
  ProductCartMenu({
    this.id,
    this.cartId,
    this.userId,
    this.quantity,
    this.createdAt,
    this.deletedAt,
    this.productId,
    this.updatedAt,
    this.visibility,
    this.productName,
    this.productImage,
    this.productVariantId,
    this.productVariantLoop,
  });

  int id;
  int cartId;
  int userId;
  String quantity;
  DateTime createdAt;
  dynamic deletedAt;
  int productId;
  DateTime updatedAt;
  int visibility;
  ProductName productName;
  List<dynamic> productImage;
  String productVariantId;
  ProductVariantLoop productVariantLoop;

  factory ProductCartMenu.fromJson(Map<String, dynamic> json) =>
      ProductCartMenu(
        id: json["id"],
        cartId: json["cart_id"],
        userId: json["user_id"],
        quantity: json["quantity"],
        createdAt: DateTime.parse(json["created_at"]),
        deletedAt: json["deleted_at"],
        productId: json["product_id"],
        updatedAt: DateTime.parse(json["updated_at"]),
        visibility: json["visibility"],
        productName: ProductName.fromJson(json["product_name"]),
        productImage: List<dynamic>.from(json["product_image"].map((x) => x)),
        productVariantId: json["product_variant_id"],
        productVariantLoop:
            ProductVariantLoop.fromJson(json["product_variant_loop"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "cart_id": cartId,
        "user_id": userId,
        "quantity": quantity,
        "created_at": createdAt.toIso8601String(),
        "deleted_at": deletedAt,
        "product_id": productId,
        "updated_at": updatedAt.toIso8601String(),
        "visibility": visibility,
        "product_name": productName.toJson(),
        "product_image": List<dynamic>.from(productImage.map((x) => x)),
        "product_variant_id": productVariantId,
        "product_variant_loop": productVariantLoop.toJson(),
      };
}

class ProductName {
  ProductName({
    this.id,
    this.unit,
    this.status,
    this.skuCode,
    this.storeId,
    this.inventory,
    this.createdAt,
    this.deletedAt,
    this.updatedAt,
    this.visibility,
    this.categoryId,
    this.description,
    this.productName,
    this.subcategoryId,
  });

  int id;
  dynamic unit;
  String status;
  String skuCode;
  int storeId;
  dynamic inventory;
  DateTime createdAt;
  DateTime deletedAt;
  DateTime updatedAt;
  int visibility;
  int categoryId;
  String description;
  String productName;
  int subcategoryId;

  factory ProductName.fromJson(Map<String, dynamic> json) => ProductName(
        id: json["id"],
        unit: json["unit"],
        status: json["status"],
        skuCode: json["sku_code"],
        storeId: json["store_id"],
        inventory: json["inventory"],
        createdAt: DateTime.parse(json["created_at"]),
        deletedAt: json["deleted_at"] == null
            ? null
            : DateTime.parse(json["deleted_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        visibility: json["visibility"],
        categoryId: json["category_id"],
        description: json["description"] == null ? null : json["description"],
        productName: json["product_name"],
        subcategoryId: json["subcategory_id"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "unit": unit,
        "status": status,
        "sku_code": skuCode,
        "store_id": storeId,
        "inventory": inventory,
        "created_at": createdAt.toIso8601String(),
        "deleted_at": deletedAt == null ? null : deletedAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "visibility": visibility,
        "category_id": categoryId,
        "description": description == null ? null : description,
        "product_name": productName,
        "subcategory_id": subcategoryId,
      };
}

class ProductVariantLoop {
  ProductVariantLoop({
    this.id,
    this.price,
    this.unitIn,
    this.discount,
    this.quantity,
    this.createdAt,
    this.delatedAt,
    this.productId,
    this.updatedAt,
    this.visibility,
    this.discountIn,
    this.effectivePrice,
  });

  int id;
  String price;
  String unitIn;
  String discount;
  String quantity;
  DateTime createdAt;
  dynamic delatedAt;
  int productId;
  DateTime updatedAt;
  int visibility;
  int discountIn;
  String effectivePrice;

  factory ProductVariantLoop.fromJson(Map<String, dynamic> json) =>
      ProductVariantLoop(
        id: json["id"],
        price: json["price"],
        unitIn: json["unit_in"],
        discount: json["discount"],
        quantity: json["quantity"],
        createdAt: DateTime.parse(json["created_at"]),
        delatedAt: json["delated_at"],
        productId: json["product_id"],
        updatedAt: DateTime.parse(json["updated_at"]),
        visibility: json["visibility"],
        discountIn: json["discount_in"],
        effectivePrice: json["effective_price"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "price": price,
        "unit_in": unitIn,
        "discount": discount,
        "quantity": quantity,
        "created_at": createdAt.toIso8601String(),
        "delated_at": delatedAt,
        "product_id": productId,
        "updated_at": updatedAt.toIso8601String(),
        "visibility": visibility,
        "discount_in": discountIn,
        "effective_price": effectivePrice,
      };
}

class StoreDetails {
  StoreDetails({
    this.id,
    this.userId,
    this.businessName,
    this.storeSearchId,
    this.categoryId,
    this.businessHourDays,
    this.businessHourTimeSlot,
    this.locateShop,
    this.address,
    this.city,
    this.state,
    this.zipCode,
    this.shopImage,
    this.gstCertificate,
    this.panCard,
    this.fssaiLicense,
    this.aadharCard,
    this.speciality,
    this.description,
    this.visibility,
    this.deletedAt,
    this.createdAt,
    this.updatedAt,
    this.categoryType,
  });

  int id;
  int userId;
  String businessName;
  String storeSearchId;
  int categoryId;
  List<String> businessHourDays;
  List<String> businessHourTimeSlot;
  String locateShop;
  String address;
  String city;
  String state;
  String zipCode;
  String shopImage;
  String gstCertificate;
  String panCard;
  String fssaiLicense;
  String aadharCard;
  String speciality;
  String description;
  int visibility;
  dynamic deletedAt;
  DateTime createdAt;
  DateTime updatedAt;
  CategoryType categoryType;

  factory StoreDetails.fromJson(Map<String, dynamic> json) => StoreDetails(
        id: json["id"],
        userId: json["user_id"],
        businessName: json["business_name"],
        storeSearchId: json["store_search_id"],
        categoryId: json["category_id"],
        businessHourDays:
            List<String>.from(json["business_hour_days"].map((x) => x)),
        businessHourTimeSlot:
            List<String>.from(json["business_hour_time_slot"].map((x) => x)),
        locateShop: json["locate_shop"],
        address: json["address"],
        city: json["city"],
        state: json["state"],
        zipCode: json["zip_code"],
        shopImage: json["shop_image"],
        gstCertificate: json["gst_certificate"],
        panCard: json["pan_card"],
        fssaiLicense: json["fssai_license"],
        aadharCard: json["aadhar_card"],
        speciality: json["speciality"],
        description: json["description"],
        visibility: json["visibility"],
        deletedAt: json["deleted_at"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        categoryType: CategoryType.fromJson(json["category_type"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "user_id": userId,
        "business_name": businessName,
        "store_search_id": storeSearchId,
        "category_id": categoryId,
        "business_hour_days":
            List<dynamic>.from(businessHourDays.map((x) => x)),
        "business_hour_time_slot":
            List<dynamic>.from(businessHourTimeSlot.map((x) => x)),
        "locate_shop": locateShop,
        "address": address,
        "city": city,
        "state": state,
        "zip_code": zipCode,
        "shop_image": shopImage,
        "gst_certificate": gstCertificate,
        "pan_card": panCard,
        "fssai_license": fssaiLicense,
        "aadhar_card": aadharCard,
        "speciality": speciality,
        "description": description,
        "visibility": visibility,
        "deleted_at": deletedAt,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "category_type": categoryType.toJson(),
      };
}

class CategoryType {
  CategoryType({
    this.id,
    this.categoryName,
    this.logo,
    this.listingOrder,
    this.visibility,
    this.deletedAt,
    this.createdAt,
    this.updatedAt,
  });

  int id;
  String categoryName;
  String logo;
  int listingOrder;
  int visibility;
  dynamic deletedAt;
  DateTime createdAt;
  dynamic updatedAt;

  factory CategoryType.fromJson(Map<String, dynamic> json) => CategoryType(
        id: json["id"],
        categoryName: json["category_name"],
        logo: json["logo"],
        listingOrder: json["listing_order"],
        visibility: json["visibility"],
        deletedAt: json["deleted_at"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "category_name": categoryName,
        "logo": logo,
        "listing_order": listingOrder,
        "visibility": visibility,
        "deleted_at": deletedAt,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt,
      };
}
