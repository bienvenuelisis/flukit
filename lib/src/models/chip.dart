import 'package:flutter/cupertino.dart';

class FluChipModel {
  /// Text to display in the chip.
  final String? text;

  /// Chip image
  /// Can be user avatar, if [FluChipType]
  final String? image;

  /// Chip type
  final FluChipType type;

  final TextStyle? textStyle;
  final bool outlined;
  final double strokeWidth;
  final double? width;
  final Color? color;
  final EdgeInsets? padding;

  FluChipModel({
    this.text,
    this.image,
    this.type = FluChipType.base,
    this.textStyle,
    this.outlined = false,
    this.strokeWidth = 1,
    this.color,
    this.width,
    this.padding,
  }) : assert(image != null || text != null);
}

enum FluChipType {
  base,
  avatar,
}
