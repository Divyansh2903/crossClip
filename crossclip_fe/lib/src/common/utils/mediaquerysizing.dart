import 'package:flutter/material.dart';

class MediaQuerySizing {
  static double height(BuildContext context, double percentage) {
    if (percentage < 0 || percentage > 100) {
      throw ArgumentError('Percentage must be between 0 and 100');
    }
    return MediaQuery.of(context).size.height * (percentage / 100);
  }

  static double width(BuildContext context, double percentage) {
    if (percentage < 0 || percentage > 100) {
      throw ArgumentError('Percentage must be between 0 and 100');
    }
    return MediaQuery.of(context).size.width * (percentage / 100);
  }

  static double devicePixelRatio(BuildContext context) {
    return MediaQuery.of(context).devicePixelRatio;
  }

  static bool isLandscape(BuildContext context) {
    return MediaQuery.of(context).orientation == Orientation.landscape;
  }

  static EdgeInsets safePadding(BuildContext context) {
    return MediaQuery.of(context).padding;
  }
}
