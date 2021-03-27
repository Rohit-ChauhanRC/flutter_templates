import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:template/app/data/errors/app_errors.dart';

class ApiInterfaceController extends GetxController {
  Rx<AppErrors> _error = Rx<AppErrors>();
  Rx<VoidCallback> _retry = Rx<VoidCallback>();
  RxBool _isLoading = false.obs;

  VoidCallback get retry => this._retry.value;

  set retry(VoidCallback retry) => this._retry.value = retry;

  AppErrors get error => _error.value;

  set error(AppErrors errors) => this._error.value = errors;

  bool get isLoading => _isLoading.value;

  set isLoading(bool isLoading) => this._isLoading.value = isLoading;
}
