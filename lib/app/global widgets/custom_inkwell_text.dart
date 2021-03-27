import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:template/app/utils/utils_export.dart';

class CustomInkwellText extends StatelessWidget {
  final Function onTap;
  final String title;
  final TextStyle textStyle;
  final Color textColor;
  final double textSize;

  const CustomInkwellText({
    Key key,
    @required this.onTap,
    @required this.title,
    this.textStyle,
    this.textColor,
    this.textSize,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Text(
        title,
        style: textStyle ??
            AppTextStyle.regularStyle(
              color: textColor,
              fontSize: textSize,
            ),
      ).paddingAll(8),
    );
  }
}
