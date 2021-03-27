import 'package:flutter/material.dart';
import 'package:template/app/utils/utils_export.dart';

class RadioBoxFormField extends FormField<bool> {
  RadioBoxFormField({
    Widget title,
    FormFieldSetter<bool> onSaved,
    FormFieldValidator<bool> validator,
    TextStyle style,
    int value,
    Function onChanged,
    int selectedRadioTile,
    // bool initialValue = false,
    ListTileControlAffinity trailing,
  }) : super(
            onSaved: onSaved,
            validator: validator,
            // initialValue: initialValue,
            builder: (FormFieldState<bool> state) {
              return RadioListTile(
                activeColor: AppColors.kPrimaryColor,
                dense: state.hasError,
                title: title,
                value: value,
                onChanged: onChanged,
                subtitle: state.hasError
                    ? Text(
                        state.errorText,
                        style: style,
                      )
                    : null,
                controlAffinity: trailing ?? ListTileControlAffinity.leading,
                groupValue: selectedRadioTile,
              );
            });
}
