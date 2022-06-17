import 'package:flutter/material.dart';

class ColorConst {
  static final ColorConst _instance = ColorConst._init();
  static ColorConst get instance => _instance;
  ColorConst._init();

  Color kPrimaryColor = const Color(0XFF007AFF);
  Color kBackground = const Color(0XFFFFFFFF);
  Color kBackgroundDark = const Color(0XFF000000);
  Color kAppBar = const Color(0XFFF6F6F6);
  Color kAppBarDark = const Color(0XFF1C1C1D);
  Color kMute = const Color(0XFFF09A37);
  Color kMuteDarK = const Color(0XFFCD7800);
  Color kDelete = const Color(0XFFFE3B30);
  Color kDeleteDark = const Color(0XFFC60C0C);
  Color kUnreadDark = const Color(0XFF666666);
  Color kPin = const Color(0XFF00C900);
  Color kPinDark = const Color(0XFF08A723);
}