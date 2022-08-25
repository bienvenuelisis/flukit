import 'package:flukit/src/widgets/image.dart';
import 'package:flukit_icons/flukit_icons.dart';

class FluOnboardingScreenPage {
  final String? image;
  final FluImageSource? imageType;
  final String title, desc;
  final String? buttonText;
  final FluIconData? buttonIcon;

  FluOnboardingScreenPage({
    this.imageType,
    this.image,
    required this.title,
    required this.desc,
    this.buttonText,
    this.buttonIcon,
  });
}
