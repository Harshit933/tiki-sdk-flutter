/*
 * Copyright (c) TIKI Inc.
 * MIT license. See LICENSE file in root directory.
 */
import 'package:flutter/material.dart';

import '../../tiki_sdk.dart';

class YourChoice extends StatelessWidget {

  late final Color? primaryTextColor;
  late final Color? accentColor;
  late String? fontFamily;
  late String? package;

  YourChoice({
    Color? primaryTextColor,
    Color? accentColor,
    String? fontFamily,
    String? package
  }){
    this.primaryTextColor = primaryTextColor ?? TikiSdk.instance.activeTheme.getPrimaryTextColor;
    this.accentColor = accentColor ?? TikiSdk.instance.activeTheme.getAccentColor;
    this.fontFamily = fontFamily ?? TikiSdk.instance.activeTheme.getFontFamily;
    this.package = package ?? TikiSdk.instance.activeTheme.getFontPackage;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "YOUR ",
          style: TextStyle(
            fontSize: 20,
            fontFamily: fontFamily ?? TikiSdk.instance.activeTheme.getFontFamily,
            package: package ?? TikiSdk.instance.activeTheme.getFontPackage,
            fontWeight: FontWeight.bold,
            color: accentColor ?? TikiSdk.instance.activeTheme.getAccentColor,
          ),
        ),
        Text(
          "CHOICE",
          style: TextStyle(
            fontFamily: fontFamily ?? TikiSdk.instance.activeTheme.getFontFamily,
            package: package ?? TikiSdk.instance.activeTheme.getFontPackage,
            fontWeight: FontWeight.bold,
            color: primaryTextColor ?? TikiSdk.instance.activeTheme.getPrimaryTextColor,
            fontSize: 20,
          ),
        ),
      ],
      mainAxisSize: MainAxisSize.max,
    );
  }
}
