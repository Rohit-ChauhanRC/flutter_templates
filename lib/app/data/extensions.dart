import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:template/app/utils/utils_export.dart';

import '../../main.dart';
import 'errors/app_errors.dart';
import 'interface_controller/api_interface_controller.dart';

class Extensions {}

extension BorderRadiusExt on num {
  BorderRadius get borderRadius => BorderRadius.circular(this.r);

  InputBorder outlineInputBorder({
    BorderSide borderSide = BorderSide.none,
  }) =>
      OutlineInputBorder(
        borderRadius: this.borderRadius,
        borderSide: borderSide,
      );
}

extension HexColorExt on String {
  Color get fromHex {
    final buffer = StringBuffer();
    if (this.length == 6 || this.length == 7) {
      buffer.write('ff');
    }

    if (this.startsWith('#')) {
      buffer.write(this.replaceFirst('#', ''));
    }
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}

extension StorageExt on String {
  void saveValue({
    @required String key,
  }) =>
      Storage.saveValue(key, this);
  //this -> value to be saved

  T getValue<T>() => Storage.getValue<T>(this);
  //this -> key to get

  void removeValue() => Storage.removeValue(this);
  //this -> key to get
}

extension DateTimeFormatterExt on DateTime {
  String formatedDate({
    String dateFormat = 'yyyy-MM-dd',
  }) {
    final formatter = DateFormat(dateFormat);
    return formatter.format(this);
  }
}

extension TimeOfDayExt on String {
  TimeOfDay getTimeOfDay({
    int addMinutes = 0,
  }) =>
      TimeOfDay.fromDateTime(
        DateFormat.jm().parse(this).add(
              Duration(
                minutes: addMinutes,
              ),
            ),
      );
}

extension RupeesExt on String {
  String get rupees => '₹ $this';
}

extension ImageExt on String {
  String get image => 'assets/images/$this.png';

  Image imageAsset({
    Size size,
    BoxFit fit,
    Color color,
  }) =>
      Image.asset(
        this,
        color: color,
        width: size?.width,
        height: size?.height,
        fit: fit,
      );

  Widget imageButton({
    @required Function onTap,
    Alignment alignment = Alignment.center,
    Color color = AppColors.kPrimaryColor,
  }) =>
      IconButton(
        icon: ImageIcon(
          AssetImage(this),
        ),
        padding: EdgeInsets.zero,
        alignment: alignment,
        onPressed: onTap,
        color: color,
      );

  Widget imageClick({
    @required Function onTap,
    Size size,
  }) =>
      InkWell(
        onTap: onTap,
        child: this.imageAsset(
          size: size ?? Size(24.w, 24.h),
        ),
      );
}

extension FutureExt<T> on Future<Either<AppErrors, T>> {
  void futureValue(
    Function(T value) response, {
    Function(String error) onError,
    VoidCallback retryFunction,
  }) {
    final _interface = Get.find<ApiInterfaceController>();
    _interface.error = null;

    Utils.loadingDialog();

    this.then((value) {
      value.fold(
        (l) {
          if (onError != null) {
            onError(l.message);
          }

          if (l is NoConnectionError || l is TimeoutError) {
            Utils.closeDialog();

            Utils.showSnackbar(l.message);

            _interface.error = NoConnectionError();

            if (retryFunction != null) {
              _interface.retry = retryFunction;
            }
          }

          logger.e('Left: ${l.message}');
        },
        (r) {
          Utils.closeDialog();
          response(r);
        },
      );
    }).catchError((e) {
      Utils.closeDialog();

      if (e != null) {
        logger.e('catchError: ${e.toString()}');

        if (e is NoConnectionError || e is TimeoutError) {
          Utils.showSnackbar(e.message);
        }
      }

      if (onError != null) {
        onError(e.toString());
      }
    }).timeout(
      const Duration(seconds: 3),
      onTimeout: () {
        Utils.closeDialog();
        Utils.showSnackbar(TimeoutError().message);
      },
    );
  }
}

extension WidgetExt on Widget {
  Widget align({
    Alignment alignment = Alignment.center,
  }) =>
      Align(
        alignment: alignment,
        child: this,
      );

  Widget onClick({@required Function onTap}) => InkWell(
        onTap: onTap,
        child: this,
      );
}

extension FormatDurationExt on int {
  String formatDuration() {
    final min = this ~/ 60;
    final sec = this % 60;
    return "${min.toString().padLeft(2, "0")}:${sec.toString().padLeft(2, "0")} min";
  }
}

extension DebugLog on String {
  void debugLog() {
    return debugPrint(
      '\n******************************* DebugLog *******************************\n'
      ' $this'
      '\n******************************* DebugLog *******************************\n',
      wrapWidth: 1024,
    );
  }
}
