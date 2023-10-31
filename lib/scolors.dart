library scolors;

import 'package:flutter/material.dart';

/// A helpful class to get a degree of darker/lighter or opposite color provided
/// by you.
class SColors {
  /// get a darker color from one color using a factor from 0-1.
  static Color? darkerColor(
    double factor, {
    Color? color,
    int? colorInt,
    String? colorStr,
  }) {
    Color? col;
    if (color != null) {
      col = color;
    } else if (colorInt != null) {
      col = Color(colorInt);
    } else if (colorStr != null) {
      col = Color(int.parse(colorStr));
    } else {
      return null;
    }

    int alpha = col.alpha;
    int red = col.red;
    int green = col.green;
    int blue = col.blue;

    return Color.fromARGB(
      alpha,
      (red * factor).toInt().clamp(0, 255),
      (green * factor).toInt().clamp(0, 255),
      (blue * factor).toInt().clamp(0, 255),
    );
  }

  static Color? lighterColor(
    double factor, {
    Color? color,
    int? colorInt,
    String? colorStr,
  }) {
    Color? col;
    if (color != null) {
      col = color;
    } else if (colorInt != null) {
      col = Color(colorInt);
    } else if (colorStr != null) {
      col = Color(int.parse(colorStr));
    } else {
      return null;
    }

    int alpha = col.alpha;
    int red =
        ((col.red * (1 - factor) / 255 + factor) * 255).round().clamp(0, 255);
    int green =
        ((col.green * (1 - factor) / 255 + factor) * 255).round().clamp(0, 255);
    int blue =
        ((col.blue * (1 - factor) / 255 + factor) * 255).round().clamp(0, 255);

    return Color.fromARGB(alpha, red, green, blue);
  }

  /// get an opposite color from one color.
  static Color? oppositeColor({
    Color? color,
    int? colorInt,
    String? colorStr,
  }) {
    Color? col;
    if (color != null) {
      col = color;
    } else if (colorInt != null) {
      col = Color(colorInt);
    } else if (colorStr != null) {
      col = Color(int.parse(colorStr));
    } else {
      return null;
    }

    final hsv = HSVColor.fromColor(col);
    final newHue = (hsv.hue + 180.0) % 360.0;
    return HSVColor.fromAHSV(hsv.alpha, newHue, hsv.saturation, hsv.value)
        .toColor();
  }

  /// Convert RGB color to HSV color.
  static Color? rgbToHsv({
    Color? color,
    int? colorInt,
    String? colorStr,
  }) {
    Color? col;
    if (color != null) {
      col = color;
    } else if (colorInt != null) {
      col = Color(colorInt);
    } else if (colorStr != null) {
      col = Color(int.parse(colorStr));
    } else {
      return null;
    }
    return HSVColor.fromColor(col).toColor();
  }
}
