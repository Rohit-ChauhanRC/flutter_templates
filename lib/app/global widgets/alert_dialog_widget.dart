import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:template/app/utils/utils_export.dart';

import 'global_widgets.dart';

class AlertDialogWidget extends StatelessWidget {
  final String title, value, firstButtonText, secondButtonText, inputValues;
  final List<String> listOfCancelReason;
  final Function rejectOrder;
  final Function onSaved;
  final String imagPath;
  // final String heading;
  // final String subHeading;
  final bool isRejectOrder;
  final Widget widget;
  final Color svgColor;
  final Color subTitleColor;
  final Color titleColor;

  const AlertDialogWidget({
    Key key,
    // @required this.controller,
    @required this.title,
    @required this.value,
    @required this.rejectOrder,
    this.firstButtonText,
    this.secondButtonText,
    this.inputValues,
    this.listOfCancelReason,
    this.onSaved,
    this.imagPath,
    this.widget,
    this.isRejectOrder = true,
    this.svgColor,
    this.subTitleColor,
    this.titleColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      // elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      // title: Text(
      //   title,
      //   textAlign: TextAlign.center,
      // ),
      backgroundColor: Colors.white,
      child: Container(
        height: isRejectOrder ? Get.height / 1.5 : Get.height / 2,
        width: Get.width - 20,
        child: Column(
          children: [
            // Container(
            //   margin: EdgeInsets.only(
            //     top: 50,
            //     bottom: 20,
            //   ),
            //   height: 100,
            //   width: 100,
            //   child: SvgWidget(
            //     path: 'assets/svg/$imagPath.svg',
            //     color: svgColor,
            //   ),
            //   // child: Image.asset('assets/icons/alert.png'),
            // ),
            Container(
              width: Get.width / 1.5,
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: AppTextStyle.heading2Style(
                  color: Colors.black,
                  fontSize: 18.sp,
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              width: Get.width / 1.5,
              child: Text(
                value,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: subTitleColor,
                  fontSize: 16.sp,
                ),
              ),
            ),
            // SizedBox(
            //   height: 25,
            // ),
            Container(
              margin: const EdgeInsets.only(
                top: 20,
              ),
              child: isRejectOrder
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: Get.width / 1.5,
                          child: DropdownFormField(
                            onSaved: onSaved,
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              contentPadding: const EdgeInsets.all(5),
                              hintText: '- Select cancellation reason -',
                              // hintStyle: Styles.hintStyle,
                              // suffixIcon: Icon(
                              //   Icons.date_range,
                              //   color: Colors.grey,
                              // ),
                              // enabledBorder: OutlineInputBorder(
                              //   borderSide: BorderSide(
                              //     color: AppColors.kSecondaryColor,
                              //   ),
                              //   borderRadius: BorderRadius.circular(30),
                              // ),
                              // border: OutlineInputBorder(
                              //   borderSide: BorderSide(
                              //     color: AppColors.kPrimaryColor,
                              //   ),
                              // ),
                              // errorBorder: OutlineInputBorder(
                              //   borderSide: BorderSide(
                              //     color: Colors.red[700],
                              //   ),
                              //   borderRadius: BorderRadius.circular(30),
                              // ),
                            ),
                            initialValue: inputValues,
                            items: listOfCancelReason
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                // onTap: fn1,
                                value: value,
                                child: Container(
                                    padding: EdgeInsets.only(left: 15),
                                    child: Text(
                                      value,
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Color(0xff2d1f76),
                                      ),
                                    )),
                              );
                            }).toList(),
                            validator: (input) => GetUtils.isNull(input)
                                ? "Please select cancel reason"
                                : null,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                            top: 20,
                          ),
                          child: new FlatButton(
                            minWidth: Get.width / 1.5,
                            color: AppColors.kPrimaryColor,
                            padding: const EdgeInsets.all(10),
                            shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  color: AppColors.kPrimaryColor,
                                ),
                                borderRadius: BorderRadius.circular(30)),
                            child: Text(
                              firstButtonText,
                              style: AppTextStyle.mediumStyle(
                                color: Colors.white,
                              ),
                            ),
                            onPressed: rejectOrder,
                          ),
                        ),
                        // SizedBox(
                        //   width: 20,
                        // ),
                        Container(
                          margin: const EdgeInsets.only(
                            top: 20,
                          ),
                          child: new FlatButton(
                            minWidth: Get.width / 1.5,
                            padding: const EdgeInsets.all(10),
                            shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  color: AppColors.kPrimaryColor,
                                ),
                                borderRadius: BorderRadius.circular(30)),
                            child: Text(
                              secondButtonText,
                              style: AppTextStyle.mediumStyle(
                                color: AppColors.kPrimaryColor,
                              ),
                            ),
                            onPressed: () {
                              Get.back();
                            },
                          ),
                        ),
                      ],
                    )
                  : widget,
            ),
          ],
        ),
      ),
    );
  }
}
