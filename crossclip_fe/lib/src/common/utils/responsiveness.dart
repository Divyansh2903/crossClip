import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Responsiveness {
  static double fontSize(BuildContext context, double size) {
    final double w = MediaQuery.of(context).size.width;
    if (kIsWeb) {
      if (w > 600) {
        return size;
      } else {
        return size.sp;
      }
    } else {
      return size.sp;
    }
  }
}
