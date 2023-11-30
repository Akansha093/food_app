// ignore_for_file: non_constant_identifier_names

import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScreenSize {
  static MediaQueryData? _mediaQuery;
  static double? screenWidth;
  static double? screenHeight;
  static double? screenHorizontal;
  static double? screenVertical;

  static double? _Horizontal;
  static double? _Vertical;
  static double? Horizontal;
  static double? Vertical;

  void init(BuildContext context) {
    _mediaQuery = MediaQuery.of(context);
    screenWidth = _mediaQuery!.size.width;
    screenHeight = _mediaQuery!.size.height;
    screenHorizontal = screenWidth! / 100;
    screenVertical = screenHeight! / 100;

    _Horizontal = _mediaQuery!.padding.left + _mediaQuery!.padding.right;
    _Vertical = _mediaQuery!.padding.top + _mediaQuery!.padding.bottom;
    Horizontal = (screenWidth! - _Horizontal!) / 100;
    Vertical = (screenHeight! - _Vertical!) / 100;
  }
}

class SizeConfig {
  static var h0 = SizedBox(height: 0.h);
  static var h2 = SizedBox(height: 2.h);
  static var h4 = SizedBox(height: 4.h);
  static var h6 = SizedBox(height: 6.h);
  static var h8 = SizedBox(height: 8.h);
  static var h10 = SizedBox(height: 10.h);
  static var h12 = SizedBox(height: 12.h);
  static var h16 = SizedBox(height: 16.h);
  static var h20 = SizedBox(height: 20.h);
  static var h24 = SizedBox(height: 24.h);
  static var h28 = SizedBox(height: 28.h);
  static var h32 = SizedBox(height: 32.h);

  static var w0 = SizedBox(width: 0.w);
  static var w2 = SizedBox(width: 2.w);
  static var w4 = SizedBox(width: 4.w);
  static var w8 = SizedBox(width: 8.w);
  static var w12 = SizedBox(width: 12.w);
  static var w16 = SizedBox(width: 16.w);
  static var w20 = SizedBox(width: 20.w);
  static var w24 = SizedBox(width: 24.w);
  static var w28 = SizedBox(width: 28.w);
  static var w32 = SizedBox(width: 32.w);
  static var w38 = SizedBox(width: 38.w);
  static var w50 = SizedBox(width: 50.w);
  static var w90 = SizedBox(width: 90.w);
}
