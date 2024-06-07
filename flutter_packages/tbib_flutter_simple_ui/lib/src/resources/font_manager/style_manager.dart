import 'package:flutter/material.dart';
import 'package:tbib_flutter_simple_ui/src/resources/font_manager/font_manager.dart';

TextStyle _getTextStyle({
  required double fontSize,
  required FontWeight fontWeight,
  required Color? color,
  required String? fontFamily,
}) {
  return TextStyle(
    fontSize: fontSize,
    color: color ?? Colors.white,
    fontWeight: fontWeight,
    fontFamily: fontFamily,
  );
}

/// light style text
TextStyle getLightStyle({
  double? fontSize,
  Color? color,
  String? fontFamily,
}) {
  return _getTextStyle(
    fontSize: fontSize ?? FontSize.s20,
    fontWeight: FontWeightManager.light,
    color: color,
    fontFamily: fontFamily,
  );
}

/// regular style text

TextStyle getRegularStyle({
  double? fontSize,
  Color? color,
  String? fontFamily,
}) {
  return _getTextStyle(
    fontSize: fontSize ?? FontSize.s16,
    fontWeight: FontWeightManager.regular,
    color: color,
    fontFamily: fontFamily,
  );
}

/// medium style text

TextStyle getMediumStyle({
  //double fontSize = FontSize.s16,
  double? fontSize,
  Color? color,
  String? fontFamily,
}) {
  return _getTextStyle(
    fontSize: fontSize ?? FontSize.s18,
    fontWeight: FontWeightManager.medium,
    color: color,
    fontFamily: fontFamily,
  );
}

/// semi bold style text

TextStyle getSemiBoldStyle({
  // double fontSize = FontSize.s18,
  double? fontSize,
  Color? color,
  String? fontFamily,
}) {
  return _getTextStyle(
    fontSize: fontSize ?? FontSize.s16,
    fontWeight: FontWeightManager.semiBold,
    color: color,
    fontFamily: fontFamily,
  );
}

/// bold style texts

TextStyle getBoldStyle({
  // double fontSize = FontSize.s20,
  double? fontSize,
  Color? color,
  String? fontFamily,
}) {
  return _getTextStyle(
    fontSize: fontSize ?? FontSize.s22,
    fontWeight: FontWeightManager.bold,
    color: color,
    fontFamily: fontFamily,
  );
}
