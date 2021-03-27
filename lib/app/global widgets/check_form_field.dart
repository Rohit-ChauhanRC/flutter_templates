import 'package:flutter/material.dart';
import 'package:template/app/utils/utils_export.dart';

class CheckboxFormField extends FormField<bool> {
  CheckboxFormField({
    Widget title,
    FormFieldSetter<bool> onSaved,
    FormFieldValidator<bool> validator,
    TextStyle style,
    bool initialValue = false,
    ListTileControlAffinity trailing,
  }) : super(
            onSaved: onSaved,
            validator: validator,
            initialValue: initialValue,
            builder: (FormFieldState<bool> state) {
              return CheckboxListTile(
                activeColor: AppColors.kPrimaryColor,
                dense: state.hasError,
                title: title,
                value: state.value,
                onChanged: state.didChange,
                subtitle: state.hasError
                    ? Text(
                        state.errorText,
                        style: style,
                      )
                    : null,
                controlAffinity: trailing ?? ListTileControlAffinity.leading,
              );
            });
}
