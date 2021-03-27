import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:template/app/utils/utils_export.dart';

class ButtonWidget extends StatelessWidget {
  final Function onPressed;
  final String text;
  final double width;
  const ButtonWidget({
    Key key,
    @required this.onPressed,
    @required this.text,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlatButton(
        minWidth: width,
        height: 40.h,
        color: AppColors.kPrimaryColor,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: AppColors.kPrimaryColor,
          ),
          borderRadius: BorderRadius.circular(30),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style:
              AppTextStyle.heading2Style(color: Colors.white, fontSize: 18.sp),
        ),
      ),
    );
  }
}
