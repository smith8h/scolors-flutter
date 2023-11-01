
// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:scolors/scolors.dart';

void main() {
  // get opposite color of a already defined color:
  Color? opposite = SColors.oppositeColor(colorStr: '#6a87e3');
  
  // get lighter color of a already defined color with factor:
  Color? lighter = SColors.lighterColor(.3, colorInt: 0xFF6A87E3);
  
  // get darker color of an already defined color with factor:
  Color? darker = SColors.darkerColor(.7, color: const Color(0xff6a87e3));
  
  // get hsv color of an already defined color:
  Color? hsv = SColors.rgbToHsv(colorStr: '#6a87e3');
}
