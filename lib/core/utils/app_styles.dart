import 'package:flutter/material.dart';

class AppStyles {
  static const String fontName = "Neue Haas Grotesk Display Pro";
  static TextStyle style24font500white(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontsize: 24),
      fontWeight: FontWeight.w700,
      fontFamily: fontName,
      color: Colors.white,
    );
  }
}

double getResponsiveFontSize(BuildContext context, {required double fontsize}) {
  double width = MediaQuery.sizeOf(context).width;

  double responsiveFontSize = fontsize * (width / 550);
  return responsiveFontSize.clamp(fontsize * .8, fontsize * 1.2);
}
