/* import 'package:flukit_icons/flukit_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// A [Flukit] styled [TextField].
///
/// This is a convenience widget that wraps a [TextField] widget in a
/// [Container] for more styling options.
class FluTextField extends StatefulWidget {
  const FluTextField(
      {super.key,
      this.inputController,
      this.focusNode,
      this.inputFormatters,
      this.validator,
      this.onChanged,
      this.expand = false,
      this.textStyle,
      // this.toolbarOptions,
      this.selectionControls,
      this.onTap,
      this.height,
      this.margin = EdgeInsets.zero,
      this.padding,
      this.fillColor,
      this.boxShadow,
      this.borderWidth,
      this.prefixIcon,
      this.suffixIcon,
      this.iconColor,
      this.iconSize = 20,
      this.iconStrokeWidth = 1.6,
      this.iconStyle = FluIconStyles.twotone,
      this.textAlign = TextAlign.start,
      this.textAlignVertical = TextAlignVertical.center,
      this.keyboardType,
      this.color,
      this.cursorColor,
      this.cursorHeight,
      this.cursorWidth = 2.0,
      required this.label,
      this.labelStyle,
      this.borderColor,
      this.borderRadius,
      this.cornerRadius,
      this.labelColor,
      this.inputAction = TextInputAction.done,
      this.maxlines,
      this.obscureText = false,
      this.maxHeight});

  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final Color? borderColor;
  final BorderRadius? borderRadius;
  final double? borderWidth;
  final List<BoxShadow>? boxShadow;
  final Color? color;
  final double? cornerRadius;
  final Color? cursorColor;
  final double? cursorHeight;
  final double cursorWidth;
  final bool expand;
  final Color? fillColor;
  final FocusNode? focusNode;
  final double? height;
  final Color? iconColor;
  final double iconSize;
  final double iconStrokeWidth;
  final FluIconStyles iconStyle;
  final TextInputAction inputAction;
  final TextEditingController? inputController;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputType? keyboardType;
  final String label;
  final Color? labelColor;
  final TextStyle? labelStyle;
  final EdgeInsets margin;
  final int? maxlines;
  final VoidCallback? onTap;
  final EdgeInsets? padding;
  final TextSelectionControls? selectionControls;
  final FluIcons? prefixIcon, suffixIcon;
  final TextAlign textAlign;
  final TextAlignVertical textAlignVertical;
  final TextStyle? textStyle;
  // final ToolbarOptions? toolbarOptions;
  final bool obscureText;
  final double? maxHeight;

  @override
  State<FluTextField> createState() => _FluTextFieldState();
}

class _FluTextFieldState<T extends FluTextField> extends State<T> {
  late FocusNode _focusNode;

  @override
  void initState() {
    _focusNode = widget.focusNode ?? FocusNode();
    super.initState();
  }

  double? get height {
    if (widget.expand && widget.maxHeight == null) {
      return double.infinity;
    } else if (widget.maxHeight != null) {
      return null;
    }

    return widget.height ?? 55; // Flu.appSettings.defaultElSize;
  }

  InputDecoration get _decoration => InputDecoration(
      border: InputBorder.none,
      hintText: widget.label,
      hintStyle: _defaultTextStyle
          .copyWith(color: widget.labelColor ?? _theme.text)
          .merge(widget.labelStyle),
      errorStyle: const TextStyle(height: 0, color: Colors.transparent),
      prefixIcon: _icon(widget.prefixIcon),
      suffixIcon: _icon(widget.suffixIcon),
      contentPadding: widget.padding ??
          (height == null
              ? EdgeInsets.symmetric(vertical: 20)
              : EdgeInsets.zero));

  TextStyle get _defaultTextStyle => _theme.textTheme.bodySmall!
      .copyWith(color: widget.color ?? _theme.text)
      .merge(widget.textStyle);

  Color get _fillColor => widget.fillColor ?? _theme.surfaceBackground;
  // FluTheme get _theme => Flu.theme;

  Widget? _icon(FluIcons? icon) {
    if (icon != null) {
      return FluIcon(
        icon,
        color: widget.iconColor ?? _theme.accentText,
        size: widget.iconSize,
        strokewidth: widget.iconStrokeWidth,
        style: widget.iconStyle,
      );
    }

    return null;
  }

  @override
  Widget build(BuildContext context) {
    Widget field = Container(
      height: height,
      margin: widget.margin,
      clipBehavior: Clip.hardEdge,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: _fillColor,
        boxShadow: widget.boxShadow,
        border: widget.borderWidth != null
            ? Border.all(
                color: widget.borderColor ?? _theme.background.withOpacity(.05),
                width: widget.borderWidth!,
              )
            : null,
        borderRadius: widget.borderRadius ??
            BorderRadius.circular(
              widget.cornerRadius ?? Flu.appSettings.defaultElRadius,
            ),
      ),
      child: TextFormField(
        controller: widget.inputController,
        focusNode: _focusNode,
        expands: height != null,
        maxLines: widget.maxlines,
        textAlign: widget.textAlign,
        textAlignVertical: widget.textAlignVertical,
        keyboardType: widget.keyboardType,
        inputFormatters: widget.inputFormatters,
        textInputAction: widget.inputAction,
        // toolbarOptions: widget.toolbarOptions,
        selectionControls: widget.selectionControls,
        style: _defaultTextStyle,
        cursorColor: widget.cursorColor ?? _theme.primary,
        cursorHeight: widget.cursorHeight,
        cursorWidth: widget.cursorWidth,
        decoration: _decoration,
        validator: widget.validator,
        onChanged: widget.onChanged,
        onTap: widget.onTap,
        obscureText: widget.obscureText,
      ),
    );

    if (widget.maxHeight != null) {
      return Container(
          color: _fillColor,
          constraints: BoxConstraints(maxHeight: widget.maxHeight!),
          child: Scrollbar(
              child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  physics: const BouncingScrollPhysics(),
                  child: field)));
    }

    return field;
  }
}
 */