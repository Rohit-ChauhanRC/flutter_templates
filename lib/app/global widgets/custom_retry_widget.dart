import 'package:flutter/material.dart';
import "package:flutter_screenutil/flutter_screenutil.dart";
import 'package:template/app/utils/utils_export.dart';

class CustomRetryWidget extends StatelessWidget {
  final String error;
  final VoidCallback onPressed;

  const CustomRetryWidget({
    Key key,
    @required this.onPressed,
    this.error = Strings.somethingWentWrong,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(error),
          SizedBox(height: 16.h),
          RaisedButton(
            onPressed: onPressed,
            child: Text(
              Strings.retry,
              style: AppTextStyle.buttonTextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
