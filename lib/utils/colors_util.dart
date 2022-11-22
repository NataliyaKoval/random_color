import 'dart:math';

import 'package:flutter/material.dart';

/// Utility class for random color generation
class ColorsUtil {
  static const _maxColorHexCodeInclusive = 0x100000000;

  /// Default constructor
  const ColorsUtil();

  /// Generates random color
  Color getRandomColor() {
    return Color(Random().nextInt(_maxColorHexCodeInclusive));
  }
}
