import 'dart:math';

import 'package:flutter/material.dart';

/// Utility class for random color generation
class ColorsUtil {
  static const _maxColor = 0xffffffff;

  /// Generates random color
  static Color getRandomColor() {
    return Color(Random().nextInt(_maxColor));
  }
}
