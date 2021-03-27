import 'dart:io';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:template/app/global%20widgets/custom_inkwell_text.dart';
import 'package:template/app/utils/values/styles/dimens.dart';

import '../utils_export.dart';

class Utils {
  static Future<void> showDialog(
    String message, {
    String title: 'Error',
    Function onTap,
  }) =>
      Get.defaultDialog(
        title: title,
        content: Text(message ?? 'Something went wrong.'),
        confirm: Align(
          alignment: Alignment.centerRight,
          child: CustomInkwellText(
            textColor: Colors.white,
            textSize: 22,
            onTap: onTap ?? () => Get.back(),
            title: 'Ok',
            textStyle: AppTextStyle.buttonTextStyle(
              color: Colors.black,
              fontSize: 22,
            ),
          ),
        ),
      );

  static Future<void> showImagePicker({
    @required Function(File image) onGetImage,
  }) {
    return showModalBottomSheet<void>(
      context: Get.context,
      builder: (context) {
        return Container(
          // height: 150,
          //
          decoration: BoxDecoration(
            // color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
          ),
          padding: EdgeInsets.all(10.w),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: InkWell(
                  onTap: () {
                    getImage(source: 2).then((v) {
                      if (v != null) {
                        onGetImage(v);
                        Get.back();
                      }
                    });
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.image, size: 60.w, color: AppColors.mineShaft),
                      SizedBox(height: 10.h),
                      Text(
                        Strings.gallery,
                        textAlign: TextAlign.center,
                        style: AppTextStyle.semiBoldStyle(
                          color: AppColors.mineShaft,
                          fontSize: Dimens.fontSize16,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: () {
                    getImage().then((v) {
                      if (v != null) {
                        onGetImage(v);
                        Get.back();
                      }
                    });
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.camera,
                          size: 60.w, color: AppColors.mineShaft),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        Strings.camera,
                        textAlign: TextAlign.center,
                        style: AppTextStyle.semiBoldStyle(
                          color: AppColors.mineShaft,
                          fontSize: Dimens.fontSize16,
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }

  static Future<File> getImage({int source = 1}) async {
    File croppedFile;
    final picker = ImagePicker();

    final pickedFile = await picker.getImage(
      source: source == 1 ? ImageSource.camera : ImageSource.gallery,
      imageQuality: 60,
    );

    if (pickedFile != null) {
      final image = File(pickedFile?.path);

      if (image != null) {
        croppedFile = await ImageCropper.cropImage(
          compressQuality: 50,
          sourcePath: image?.path,
          aspectRatioPresets: [
            CropAspectRatioPreset.square,
            CropAspectRatioPreset.ratio3x2,
            CropAspectRatioPreset.original,
            CropAspectRatioPreset.ratio4x3,
            CropAspectRatioPreset.ratio16x9
          ],
          androidUiSettings: const AndroidUiSettings(
            toolbarColor: Colors.transparent,
            toolbarWidgetColor: Colors.transparent,
            initAspectRatio: CropAspectRatioPreset.original,
            lockAspectRatio: false,
          ),
          iosUiSettings: const IOSUiSettings(
            minimumAspectRatio: 0.1,
            aspectRatioLockDimensionSwapEnabled: true,
          ),
        );
      }
    }

    return croppedFile;
  }

  static void loadingDialog() {
    Utils.closeDialog();

    Get.dialog(
      const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

  static void closeDialog() {
    if (Get.isDialogOpen) {
      Get.back();
    }
  }

  static void closeSnackbar() {
    if (Get.isDialogOpen) {
      Get.back();
    }
  }

  static void showSnackbar(String message) {
    if (Get.isSnackbarOpen) {
      Get.back();
    }

    Get.rawSnackbar(message: message);
  }

  static void closeKeyboard() {
    final currentFocus = Get.focusScope;
    if (!currentFocus.hasPrimaryFocus) {
      currentFocus.unfocus();
    }
  }

  static void goBackToScreen(String routeName) {
    Get.until(
      (route) => Get.currentRoute == routeName,
    );
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

extension ModealBottomExt on Widget {
  showBottomSheet() {
    showModalBottomSheet(
      context: Get.context,
      isScrollControlled: true,
      builder: (_) => this,
    );
  }
}
