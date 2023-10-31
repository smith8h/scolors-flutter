
import 'package:flutter_test/flutter_test.dart';
import 'package:scolors/scolors.dart';
import 'package:flutter/material.dart';

void main() {
  test('DONE', () {
    expect(SColors.darkerColor(.6), null);
    expect(
      SColors.darkerColor(.6, colorInt: 0xFF6A87E3),
      const Color(0xff3f5188),
    );
  });
}
