import 'package:flutter/material.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:template/app/utils/utils_export.dart';

class DateTimePickerWidget extends StatelessWidget {
  final Color iconColor;
  final TextEditingController controller;
  final Function onSaved;
  final Function fn;
  final String text;
  final TextStyle style;
  final Function validate;

  const DateTimePickerWidget({
    Key key,
    this.iconColor,
    this.controller,
    @required this.fn,
    @required this.text,
    this.style,
    @required this.validate,
    this.onSaved,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: DateTimeField(
        // key: ValueKey('dob'),

        style: style,
        textAlign: TextAlign.center,
        // autovalidateMode: false,
        onSaved: onSaved,
        validator: validate,
        decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          contentPadding: const EdgeInsets.all(5),
          hintText: text,
          // hintStyle: Styles.hintStyle,
          suffixIcon: Icon(
            Icons.date_range,
            color: Colors.grey,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.kSecondaryColor,
            ),
            borderRadius: BorderRadius.circular(30),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.kPrimaryColor,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.red[700],
            ),
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        format: Constants.format,
        controller: controller,
        onChanged: fn,
        onShowPicker: (context, currentValue) {
          return showDatePicker(
              context: context,
              firstDate: DateTime(1900),
              initialDate: currentValue ?? DateTime.now(),
              lastDate: DateTime(2100));
        },
      ),
    );
  }
}
