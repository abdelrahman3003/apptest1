import 'package:apptest1/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class AppStyles {
  static const String fontName = "Neue Haas Grotesk Display Pro";
  static TextStyle style24font400white(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontsize: 24),
      fontWeight: FontWeight.w400,
      fontFamily: fontName,
      color: Colors.white,
    );
  }

  static TextStyle style22font500primary(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontsize: 22),
      fontWeight: FontWeight.w500,
      fontFamily: fontName,
      color: AppColors.primaryColor,
    );
  }

  static TextStyle style22font400white(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontsize: 22),
      fontWeight: FontWeight.w400,
      fontFamily: fontName,
      color: Colors.white,
    );
  }

  static TextStyle style18font400black(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontsize: 18),
      fontWeight: FontWeight.w400,
      fontFamily: fontName,
      color: Colors.black,
    );
  }

  static TextStyle style16font500white(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontsize: 16),
      fontWeight: FontWeight.w500,
      fontFamily: fontName,
      color: Colors.white,
    );
  }

  static TextStyle style14font400white(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontsize: 14),
      fontWeight: FontWeight.w400,
      fontFamily: fontName,
      color: Colors.white,
    );
  }

  static TextStyle style12font700black(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontsize: 12),
      fontWeight: FontWeight.w700,
      fontFamily: fontName,
      color: Colors.black,
    );
  }

  static TextStyle style12font500black(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontsize: 12),
      fontWeight: FontWeight.w500,
      fontFamily: fontName,
      color: Colors.black,
    );
  }
  static TextStyle style12font500white(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontsize: 12),
      fontWeight: FontWeight.w500,
      fontFamily: fontName,
      color: Colors.white,
    );
  }
  static TextStyle style12font400black(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontsize: 12),
      fontWeight: FontWeight.w400,
      fontFamily: fontName,
      color: Colors.black,
    );
  }
}

double getResponsiveFontSize(BuildContext context, {required double fontsize}) {
  double width = MediaQuery.sizeOf(context).width;

  double responsiveFontSize = fontsize * (width / 420);
  return responsiveFontSize.clamp(fontsize * .8, fontsize * 1.2);
}
