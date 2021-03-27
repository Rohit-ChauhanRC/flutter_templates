import 'package:flutter/material.dart';

class TextFormWidget extends StatelessWidget {
  final String hintText;
  final String labelText;
  final Widget prefixIcon;
  final Widget suffixIcon;
  final TextInputType textInputType;
  final Function onSaved;
  final Function onChanged;
  final Function validator;
  final TextEditingController controller;
  final bool isObscure;
  final String initialValue;
  final InputBorder border;
  final InputBorder focusedBorder;
  final InputBorder enabledBorder;
  final Function onTap;
  final bool readOnly;

  const TextFormWidget({
    Key key,
    this.hintText,
    this.labelText,
    this.prefixIcon,
    this.suffixIcon,
    this.textInputType,
    this.validator,
    this.controller,
    this.isObscure = false,
    this.onSaved,
    this.onChanged,
    this.initialValue,
    this.border,
    this.focusedBorder,
    this.enabledBorder,
    this.onTap,
    this.readOnly = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        readOnly: readOnly,
        onTap: onTap,
        initialValue: initialValue ?? "",
        keyboardType: textInputType,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        controller: controller,
        onSaved: onSaved,
        onChanged: onChanged,
        validator: validator,
        obscureText: isObscure,
        decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          // helperText: hintText,
          // helperStyle: Styles.hintStyle,
          labelText: labelText,
          // alignLabelWithHint: true,
          // prefixText: hintText,

          // labelStyle: Styles.hintStyle,
          contentPadding: EdgeInsets.all(12),
          // hintText: hintText,
          // hintStyle: Styles.hintStyle,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          border: border,
          // border: OutlineInputBorder(
          //   borderRadius: BorderRadius.circular(30),
          //   borderSide: BorderSide(
          //     color: Styles.splashColor,
          //   ),
          // ),
          focusedBorder: focusedBorder,
          enabledBorder: enabledBorder,
          // focusedBorder: OutlineInputBorder(
          //   borderRadius: BorderRadius.circular(30),
          //   borderSide: BorderSide(
          //     color: Styles.splashColor,
          //   ),
          // ),
          // enabledBorder: OutlineInputBorder(
          //   borderRadius: BorderRadius.circular(30),
          //   borderSide: BorderSide(
          //     color: Styles.boundaryColor,
          //   ),
          // ),
        ),
      ),
    );
  }
}
