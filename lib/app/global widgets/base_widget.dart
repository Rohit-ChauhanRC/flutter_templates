import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:template/app/data/interface_controller/api_interface_controller.dart';

import 'custom_retry_widget.dart';

class BaseWidget extends GetView<ApiInterfaceController> {
  ///A widget with only custom retry button widget.
  final Widget child;
  final bool isRetry;

  const BaseWidget({
    Key key,
    @required this.child,
    this.isRetry = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isRetry
        ? Obx(
            () => SafeArea(
              child: controller.error != null
                  ? CustomRetryWidget(
                      onPressed: () {
                        controller.error = null;
                        if (controller.retry != null) {
                          controller.retry();
                        }
                      },
                    )
                  : widget,
            ),
          )
        : widget;
  }

  Widget get widget => Container(
        width: Get.width,
        color: Colors.white,
        child: child,
      );
}
