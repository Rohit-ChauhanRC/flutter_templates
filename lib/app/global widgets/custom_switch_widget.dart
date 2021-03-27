import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:template/app/utils/utils_export.dart';
import 'package:template/app/utils/values/styles/dimens.dart';

import 'cupertino_switch_tile.dart';

class CustomSwitchTileWidget extends StatelessWidget {
  final double scale;
  final bool value;
  final ValueChanged<bool> onChanged;
  final Alignment alignment;
  final Widget child;
  final String title;
  final TextStyle textStyle;
  final Color textColor;
  final double textSize;

  const CustomSwitchTileWidget({
    Key key,
    this.scale,
    @required this.value,
    @required this.onChanged,
    this.alignment,
    this.child,
    this.title,
    this.textStyle,
    this.textColor,
    this.textSize,
  })  : assert(
          title == null || child == null,
          'Cannot provide both a title and a child\n'
          'To provide both, use "title: Text(title)".',
        ),
        assert(
          textColor == null || textStyle == null,
          'Cannot provide both a textColor and a textStyle\n'
          'To provide both, use "textStyle: TextStyle(color: color)".',
        ),
        assert(
          textSize == null || textStyle == null,
          'Cannot provide both a textSize and a textStyle\n'
          'To provide both, use "textStyle: TextStyle(size: textSize)".',
        ),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoSwitchListTile(
      value: value,
      onChanged: onChanged,
      dense: true,
      scale: scale ?? 0.6,
      alignment: alignment ?? Alignment.centerRight,
      trackColor: AppColors.amaranth,
      activeColor: AppColors.caribbeanGreen,
      contentPadding: EdgeInsets.zero,
      title: child ??
          Text(
            title ?? '---',
            style: textStyle ??
                AppTextStyle.regularStyle(
                  color: textColor ?? Colors.black,
                  fontSize: textSize ?? Dimens.fontSize16,
                ),
          ),
    );
  }
}
