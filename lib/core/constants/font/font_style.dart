import 'package:flutter/material.dart';
import 'package:telegram/core/constants/colors/color_const.dart';
import 'package:telegram/core/constants/font/font_size.dart';
import 'package:telegram/core/constants/font/font_weight.dart';

class FStyles {
  static const TextStyle headline1s = TextStyle(fontSize: FSize.huge);
  static const TextStyle headline2s = TextStyle(fontSize: FSize.large);
  static const TextStyle headline3s = TextStyle(fontSize: FSize.medium);
  static const TextStyle headline3bold = TextStyle(fontSize: FSize.medium, fontWeight: FWeight.bold);
  static TextStyle headline3blue = TextStyle(fontSize: FSize.medium, color: ColorConst.kPrimaryColor);
  static const TextStyle headline4s = TextStyle(fontSize: FSize.medium);
  static const TextStyle headline4sbold = TextStyle(fontSize: FSize.medium);
  static const TextStyle headline5s = TextStyle(fontSize: FSize.medium);
  static const TextStyle headline52 = TextStyle(fontSize: FSize.medium2);
  static const TextStyle headline6s = TextStyle(fontSize: FSize.small, color: Colors.grey);
  static const TextStyle headline7s = TextStyle(fontSize: FSize.extraSmall);
}
