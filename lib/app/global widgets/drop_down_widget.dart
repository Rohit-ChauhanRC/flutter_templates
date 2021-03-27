import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DropdownFormField<T> extends FormField<T> {
  DropdownFormField({
    InputDecoration decoration,
    T initialValue,
    List<DropdownMenuItem<T>> items,
    FormFieldSetter<T> onSaved,
    FormFieldValidator<T> validator,
  }) : super(
          onSaved: onSaved,
          validator: validator,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          initialValue: items.contains(initialValue) ? initialValue : null,
          builder: (FormFieldState<T> field) {
            final InputDecoration effectiveDecoration = (decoration ??
                    const InputDecoration())
                .applyDefaults(Theme.of(field.context).inputDecorationTheme);

            return InputDecorator(
              decoration: effectiveDecoration.copyWith(
                  hintStyle: TextStyle(
                    fontSize: 12.sp,
                  ),
                  errorText: field.hasError ? field.errorText : null),
              isEmpty: field.value == '' || field.value == null,
              child: DropdownButtonHideUnderline(
                child: DropdownButton<T>(
                  value: field.value,
                  isDense: true,
                  onChanged: field.didChange,
                  items: items.toList(),
                ),
              ),
            );
          },
        );
}

// import 'package:faito/app/utils/styles.dart';
// import 'package:flutter/material.dart';

// class DropDownWidget extends StatelessWidget {
//   final String inputValue;
//   final List<String> list;
//   final String text;
//   final Function fn;
//   final String Function(String) validator;
//   DropDownWidget({
//     Key key,
//     @required this.inputValue,
//     @required this.list,
//     @required this.text,
//     @required this.fn,
//     @required this.validator,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: DropdownButtonHideUnderline(
//         // key: key,
//         child: DropdownButtonFormField<String>(
//           // key: key,
//           itemHeight: 48,
//           // style: kheadingStyle.apply(
//           //   fontWeightDelta: 3,
//           //   fontSizeFactor: 1.0,
//           // ),
//           // isDense: true,
//           isDense: true,
//           decoration: InputDecoration(
//             filled: true,
//             fillColor: Colors.white,
//             enabledBorder: OutlineInputBorder(
//               borderSide: BorderSide(
//                 color: Styles.boundaryColor,
//               ),
//               borderRadius: BorderRadius.circular(30),
//             ),
//             border: OutlineInputBorder(
//               borderSide: BorderSide(
//                 color: Styles.splashColor,
//               ),
//             ),
//             errorBorder: OutlineInputBorder(
//               borderSide: BorderSide(
//                 color: Colors.red[700],
//               ),
//               borderRadius: BorderRadius.circular(30),
//             ),
//             hintText: text,
//           ),
//           validator: validator,
//           autovalidateMode: AutovalidateMode.onUserInteraction,
//           value: inputValue,
//           autofocus: false,
//           isExpanded: true,
//           hint: new Container(
//               // padding: EdgeInsets.only(left: 5),
//               child: FittedBox(
//             child: Text(
//               text,
//               // style: kheadingStyle.apply(
//               //   fontWeightDelta: 3,
//               //   fontSizeFactor: 1.2,
//               // ),
//             ),
//           )),
//           icon: Icon(
//             Icons.arrow_drop_down_sharp,
//             color: Colors.grey,
//           ),
//           iconSize: 30,
//           onChanged: fn,
//           items: list.map<DropdownMenuItem<String>>((String value) {
//             return DropdownMenuItem<String>(
//               // onTap: fn1,
//               value: value,
//               child: Container(
//                   padding: EdgeInsets.only(left: 15),
//                   child: Text(
//                     value,
//                     style: TextStyle(
//                       fontSize: 15,
//                       color: Color(0xff2d1f76),
//                     ),
//                   )),
//             );
//           }).toList(),
//         ),
//       ),
//     );
//   }
// }
