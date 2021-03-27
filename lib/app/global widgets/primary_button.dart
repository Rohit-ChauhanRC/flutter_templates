import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:template/app/utils/utils_export.dart';
import 'package:template/app/utils/values/styles/dimens.dart';

class PrimaryButton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  final double height;

  PrimaryButton({
    this.onTap,
    this.text,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: onTap,
      height: (height ?? 40).h,
      child: Text(
        text,
        style: AppTextStyle.buttonTextStyle(
          color: Colors.white,
          fontSize: Dimens.fontSize14,
        ),
      ),
      textColor: Colors.white,
    );
  }
}
