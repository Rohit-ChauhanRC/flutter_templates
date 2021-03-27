import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';

class UploadImageWidget extends StatelessWidget {
  final Function onTap;
  final File imageFile;
  final double width;
  final double height;

  const UploadImageWidget({
    Key key,
    @required this.onTap,
    this.imageFile,
    this.width,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          width: width ?? 350.w,
          height: height ?? 100.h,
          alignment: imageFile != null ? null : Alignment.center,
          color: Colors.white,
          child: imageFile != null
              ? Image.file(
                  imageFile,
                  fit: BoxFit.fitWidth,
                )
              : Icon(Icons.add),
        ),
      ),
    );
  }
}
