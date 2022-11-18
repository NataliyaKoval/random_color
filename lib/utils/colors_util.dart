import 'dart:math';

import 'package:flutter/material.dart';

/// Utility class for random color generation
class ColorsUtil {
  static const _maxColorHexCodeInclusive = 0x100000000;

  /// Generates random color
  static Color getRandomColor() {
    return Color(Random().nextInt(_maxColorHexCodeInclusive));
  }
}
