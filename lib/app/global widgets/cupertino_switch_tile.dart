import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoSwitchListTile extends StatelessWidget {
  /// This has been shamelessly copied from Material/SwitchListTile.
  /// The applicable license applies.
  const CupertinoSwitchListTile({
    Key key,
    @required this.value,
    @required this.onChanged,
    this.activeColor,
    this.title,
    this.subtitle,
    this.isThreeLine = false,
    this.dense,
    this.secondary,
    this.selected = false,
    this.contentPadding,
    this.scale = 0.6,
    this.alignment = Alignment.centerRight,
    this.trackColor,
  })  : assert(value != null),
        assert(isThreeLine != null),
        assert(!isThreeLine || subtitle != null),
        assert(selected != null),
        super(key: key);

  /// Whether this switch is checked.
  ///
  /// This property must not be null.
  final bool value;

  /// Called when the user toggles the switch on or off.
  ///
  /// The switch passes the new value to the callback but does not actually
  /// change state until the parent widget rebuilds the switch tile with the
  /// new value.
  ///
  /// If null, the switch will be displayed as disabled.
  ///
  /// The callback provided to [onChanged] should update the state of the parent
  /// [StatefulWidget] using the [State.setState] method, so that the parent
  /// gets rebuilt; for example:
  ///
  /// ```dart
  /// new SwitchListTile(
  ///   value: _lights,
  ///   onChanged: (bool newValue) {
  ///     setState(() {
  ///       _lights = newValue;
  ///     });
  ///   },
  ///   title: new Text('Lights'),
  /// )
  /// ```
  final ValueChanged<bool> onChanged;

  /// The color to use when this switch is on.
  ///
  /// Defaults to accent color of the current [Theme].
  final Color activeColor;

  /// The color to use for the background when the switch is off.
  ///
  /// Defaults to [CupertinoColors.secondarySystemFill] when null.
  final Color trackColor;

  /// The primary content of the list tile.
  ///
  /// Typically a [Text] widget.
  final Widget title;

  /// Additional content displayed below the title.
  ///
  /// Typically a [Text] widget.
  final Widget subtitle;

  /// A widget to display on the opposite side of the tile from the switch.
  ///
  /// Typically an [Icon] widget.
  final Widget secondary;

  /// Whether this list tile is intended to display three lines of text.
  ///
  /// If false, the list tile is treated as having one line if the subtitle is
  /// null and treated as having two lines if the subtitle is non-null.
  final bool isThreeLine;

  /// Whether this list tile is part of a vertically dense list.
  ///
  /// If this property is null then its value is based on [ListTileTheme.dense].
  final bool dense;

  /// If null, `EdgeInsets.symmetric(horizontal: 16.0)` is used.
  final EdgeInsetsGeometry contentPadding;

  /// Whether to render icons and text in the [activeColor].
  ///
  /// No effort is made to automatically coordinate the [selected] state and the
  /// [value] state. To have the list tile appear selected when the switch is
  /// on, pass the same value to both.
  ///
  /// Normally, this property is left to its default value, false.
  final bool selected;

  /// To change the size of the [CupertinoSwitch]
  ///If null, `sclae: 0.6` is used.
  final double scale;

  /// To change the alignment of the [CupertinoSwitch]
  ///If null, `alignment = Alignment.centerRight` is used.
  final Alignment alignment;

  @override
  Widget build(BuildContext context) {
    final Widget control = Transform.scale(
      scale: scale,
      alignment: alignment,
      child: CupertinoSwitch(
        trackColor: trackColor,
        activeColor: activeColor ?? CupertinoColors.activeGreen,
        value: value,
        onChanged: onChanged,
      ),
    );

    return MergeSemantics(
      child: ListTileTheme.merge(
        child: ListTile(
          visualDensity: const VisualDensity(
            vertical: -4,
          ),
          leading: secondary,
          title: title,
          subtitle: subtitle,
          trailing: control,
          isThreeLine: isThreeLine,
          dense: dense,
          contentPadding: contentPadding,
          enabled: onChanged != null,
          onTap: () => onChanged?.call(!value),
          selected: selected,
        ),
      ),
    );
  }
}
