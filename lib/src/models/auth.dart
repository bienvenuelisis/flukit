import 'package:flukit/flukit.dart';
import 'package:flukit_icons/flukit_icons.dart';
import 'package:flutter/material.dart';

class FluAuthScreenStep {
  final FluImageSource? imageType;
  final String image, title, desc, buttonLabel;
  final FluIconData? buttonIcon;

  FluAuthScreenStep(
      {required this.title,
      required this.desc,
      required this.buttonLabel,
      required this.image,
      this.imageType,
      this.buttonIcon});
}

class FluAuthScreenInputStep extends FluAuthScreenStep {
  final String inputHint;
  final double? inputHeight;
  final double? inputRadius;
  final bool Function(String value, FluAuthScreenController controller)?
      inputValidator;
  final void Function(String value, FluAuthScreenController controller)?
      onInputValueChanged;
  final String Function(FluAuthScreenController controller)? onError;

  FluAuthScreenInputStep({
    required String title,
    required String desc,
    required String buttonLabel,
    required String image,
    required this.inputHint,
    FluImageSource? imageType,
    FluIconData? buttonIcon,
    this.inputValidator,
    this.onInputValueChanged,
    this.onError,
    this.inputHeight,
    this.inputRadius,
  }) : super(
            title: title,
            desc: desc,
            buttonLabel: buttonLabel,
            buttonIcon: buttonIcon,
            image: image,
            imageType: imageType);
}

class FluAuthScreenCustomStep extends FluAuthScreenStep {
  final Widget Function(BuildContext context, FluAuthScreenController controller,
      TextEditingController inputController) builder;
  final bool Function(FluAuthScreenController controller)? onButtonPressed;

  FluAuthScreenCustomStep(
      {required this.builder,
      this.onButtonPressed,
      required String title,
      required String desc,
      required String buttonLabel,
      required String image,
      FluIconData? buttonIcon})
      : super(
          title: title,
          desc: desc,
          buttonLabel: buttonLabel,
          buttonIcon: buttonIcon,
          image: image,
        );
}

class FluAuthData {
  FluAuthData();
}
