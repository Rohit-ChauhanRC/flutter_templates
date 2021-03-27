import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screen_util.dart';

import 'package:get/get.dart';
import 'package:logger/logger.dart';

import 'app/routes/app_pages.dart';
import 'app/utils/utils_export.dart';

final logger = Logger(
  printer: PrettyPrinter(),
);

void main() {
  Initializer.init();
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
      BoxConstraints(
        maxWidth: Get.width,
        maxHeight: Get.height,
      ),
    );
    return GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    );
  }
}
