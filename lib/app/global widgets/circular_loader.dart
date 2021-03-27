import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CircularLoader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: Get.width,
      height: Get.height,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.4),
      ),
      child: CircularProgressIndicator(
        backgroundColor: Colors.grey[200],
      ),
    );
  }
}
