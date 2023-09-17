import 'package:flutter/material.dart';

class AppTypography {
  /// It returns a TextStyle object with the fontFamily set to Raleway.
  ///
  /// Args:
  ///   fontSize (double): The size of the font.
  ///   color (Color): The color of the text.
  ///   fontWeight (FontWeight): AppTypography.fontWeightMedium,
  ///   textDecoration (TextDecoration): TextDecoration.underline,
  static TextStyle stRaleway({
    double? fontSize,
    Color? color,
    FontWeight? fontWeight,
    TextDecoration? textDecoration,
    double? height,
  }) =>
      TextStyle(
        color: color,
        fontWeight: fontWeight,
        decoration: textDecoration,
        fontSize: fontSize,
        fontFamily: 'Raleway',
        height: height,
      );

  /// It returns a TextStyle object with the fontFamily set to Gradual.
  ///
  /// Args:
  ///   fontSize (double): The size of the font.
  ///   color (Color): The color of the text.
  ///   fontWeight (FontWeight): AppTypography.fontWeightMedium,
  ///   textDecoration (TextDecoration): TextDecoration.underline,
  static TextStyle stGradual({
    double? fontSize,
    Color? color,
    FontWeight? fontWeight,
    TextDecoration? textDecoration,
    double? height,
  }) =>
      TextStyle(
          color: color,
          fontWeight: fontWeight,
          decoration: textDecoration,
          fontSize: fontSize,
          fontFamily: 'Gradual',
          height: height);

  /// FontWeight App
  static const FontWeight fontWeightMedium = FontWeight.w500;
  static const FontWeight fontWeightSemiBold = FontWeight.w600;
  static const FontWeight fontWeightBold = FontWeight.w700;
  static const FontWeight fontWeightExtraBold = FontWeight.w800;
}
