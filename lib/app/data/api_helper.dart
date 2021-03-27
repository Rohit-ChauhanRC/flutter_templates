import 'package:dartz/dartz.dart';

import 'package:get/get.dart';
import 'package:template/app/utils/utils_export.dart';

import '../../main.dart';
import 'app_reponse.dart';
import 'errors/app_errors.dart';
import 'models/create_password_model.dart';
import 'models/new_order_model.dart';
import 'models/verify_otp_after_forgot_model.dart';
import 'models/verify_otp_model.dart';

class ApiHelper extends GetConnect with AppResponse {
  @override
  void onInit() {
    httpClient.baseUrl = Constants.BASE_URL;
    httpClient.timeout = Duration(seconds: 3);
    httpClient.addResponseModifier((request, response) {
      logger.i(
        'Status Code: ${response?.statusCode}\n'
        'Data: ${response?.bodyString?.toString() ?? ''}',
      );

      return response;
    });
  }

  void addRequestModifier() {
    if (Storage.hasData(Constants.TOKEN)) {
      httpClient.addRequestModifier((request) async {
        logger.i(
          'REQUEST ║ ${request.method.toUpperCase()}\n'
          'url: ${request.url}\n'
          'Headers: ${request.headers}\n',
          (request.files != null) ? 'Body: ${request.files}\n' : '',
        );
        return request;
      });
    }
  }

  // void addRequestModifier() {
  //   if (Storage.hasData(Constants.TOKEN)) {
  //     httpClient.addRequestModifier((request) async {
  //       // Set the header
  //       request.headers['Authorization'] =
  //           'Bearer ${Storage.getValue(Constants.TOKEN)}';

  //       Logger().i(
  //         'REQUEST ║ ${request.method.toUpperCase()}\n'
  //         'url: ${request.url}\n'
  //         'Headers: ${request.headers}\n',
  //         (request.files != null) ? 'Body: ${request.files}\n' : '',
  //       );
  //       return request;
  //     });
  //   }
  // }

  Future<Either<AppErrors, dynamic>> signUpRider(
    Map<String, String> body,
  ) {
    return post(
      '${Constants.Rider}/register',
      body,
    ).then(
      (value) => getResponse(value),
    );
  }

  // Future<Either<AppErrors, LoginModel>> login(
  //   Map body,
  // ) {
  //   return post(
  //     '${Constants.Rider}/login',
  //     body,
  //     decoder: (data) => LoginModel.fromJson(data),
  //   ).then(
  //     (value) => getResponse(value),
  //   );
  // }

  // Future<Either<AppErrors, VerifyOtpModel>> verifyOtp(
  //   Map body,
  // ) {
  //   return post(
  //     'VerifyOtp',
  //     body,
  //     decoder: (data) => VerifyOtpModel.fromJson(data),
  //   ).then(
  //     (value) => getResponse(value),
  //   );
  // }

  // Future<Either<AppErrors, VerifyOtpAfterForgotModel>> verifyOtpAfterForgot(
  //   Map body,
  // ) {
  //   return post(
  //     'VerifyOtp',
  //     body,
  //     decoder: (data) => VerifyOtpAfterForgotModel.fromJson(data),
  //   ).then(
  //     (value) => getResponse(value),
  //   );
  // }

  // Future<Either<AppErrors, dynamic>> signUpMoreDetails(
  //   FormData body,
  // ) {
  //   return post(
  //     '${Constants.Rider}/register',
  //     body,
  //   ).then(
  //     (value) => getResponse(value),
  //   );
  // }

  // Future<Either<AppErrors, SendOtpModel>> sendOtp(
  //   Map body,
  // ) {
  //   return post(
  //     'SendOtp',
  //     body,
  //     decoder: (data) => SendOtpModel.fromJson(data),
  //   ).then(
  //     (value) => getResponse(value),
  //   );
  // }

  // Future<Either<AppErrors, CreatePasswordModel>> createPassword(
  //   Map body,
  // ) {
  //   return post(
  //     'forgetPassword',
  //     body,
  //     decoder: (data) => CreatePasswordModel.fromJson(data),
  //   ).then(
  //     (value) => getResponse(value),
  //   );
  // }

  // Future<Either<AppErrors, NewOrderModel>> getNewOrders() {
  //   return get(
  //     '${Constants.Rider}/getRiderAllOrder',
  //     headers: {
  //       "Authorization": "Bearer ${Storage.getValue(Constants.TOKEN)}",
  //       "Accept": "application/json",
  //     },
  //     decoder: (v) => NewOrderModel.fromJson(v),
  //   ).then(
  //     (value) => getResponse(value),
  //   );
  // }

  // Future<Either<AppErrors, dynamic>> updateOnlineStatus(int status) {
  //   return get(
  //     'dutyStatus?status=$status',
  //     headers: {
  //       "Authorization": "Bearer ${Storage.getValue(Constants.TOKEN)}",
  //       "Accept": "application/json",
  //     },
  //   ).then(
  //     (value) => getResponse(value),
  //   );
  // }

  // Future<Either<AppErrors, UserDetailsModel>> getUserDetails() {
  //   return get('${Constants.Rider}/details',
  //       decoder: (v) => UserDetailsModel.fromJson(v)).then(
  //     (value) => getResponse(value),
  //   );
  // }
}
