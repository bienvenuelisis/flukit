import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../utils.dart';

/// Todo: Write documentation.
/// Create a layout with styled system overlay
class FluScreen extends StatelessWidget {
  const FluScreen({
    super.key,
    required this.body,
    this.appBar,
    this.overlayStyle,
    this.bottomNavigationBar,
    this.floatingActionButton,
    this.extendBody = false,
    this.background,
    this.floatingActionButtonLocation =
        FloatingActionButtonLocation.centerDocked,
    this.drawer,
    this.endDrawer,
    this.scaffoldKey,
    this.drawerScrimColor,
    this.resizeToAvoidBottomInset,
  });

  final PreferredSizeWidget? appBar;
  final Widget body;
  final Widget? floatingActionButton, bottomNavigationBar;
  final Color? background, drawerScrimColor;
  final Widget? drawer, endDrawer;
  final bool extendBody;
  final FloatingActionButtonLocation floatingActionButtonLocation;
  final SystemUiOverlayStyle? overlayStyle;
  final GlobalKey<ScaffoldState>? scaffoldKey;
  final bool? resizeToAvoidBottomInset;

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: context.systemUiOverlayStyle.copyWith(
          statusBarColor: overlayStyle?.statusBarColor,
          statusBarIconBrightness: overlayStyle?.statusBarIconBrightness,
          statusBarBrightness: overlayStyle?.statusBarBrightness,
          systemNavigationBarColor: overlayStyle?.systemNavigationBarColor,
          systemNavigationBarDividerColor:
              overlayStyle?.systemNavigationBarDividerColor,
          systemNavigationBarIconBrightness:
              overlayStyle?.systemNavigationBarIconBrightness,
          systemStatusBarContrastEnforced:
              overlayStyle?.systemStatusBarContrastEnforced,
          systemNavigationBarContrastEnforced:
              overlayStyle?.systemNavigationBarContrastEnforced),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: background ?? context.colorScheme.background,
        extendBody: extendBody,
        appBar: appBar,
        body: body,
        bottomNavigationBar: bottomNavigationBar,
        floatingActionButtonLocation: floatingActionButtonLocation,
        floatingActionButton: floatingActionButton,
        drawer: drawer,
        endDrawer: endDrawer,
        drawerScrimColor: drawerScrimColor,
        resizeToAvoidBottomInset: resizeToAvoidBottomInset,
      ),
    );
  }
}
