import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:template/app/utils/utils_export.dart';

import 'primary_button.dart';

class CustomRetryButton extends StatelessWidget {
  final String error;
  final Function onPressed;

  const CustomRetryButton({
    Key key,
    @required this.onPressed,
    this.error: Strings.somethingWentWrong,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(error),
          SizedBox(height: 16.h),
          PrimaryButton(
            text: Strings.retry,
            height: 35.h,
            onTap: onPressed,
          ),
        ],
      ),
    );
  }
}
