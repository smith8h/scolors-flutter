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
}
