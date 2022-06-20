import 'package:flutter/material.dart';
import 'package:telegram/core/constants/colors/color_const.dart';
import 'package:telegram/core/constants/font/font_style.dart';

class SettingsListTileWidget extends StatelessWidget {
  final VoidCallback? ontap;
  final String text;
  final Widget? subtitle;
  final Widget? leading;
  final Widget? trailing;
  const SettingsListTileWidget(
      {this.subtitle,
      this.leading,
      required this.text,
      this.trailing,
      this.ontap,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: ontap,
      tileColor: ColorConst.kWhite,
      title: Text(
        text,
        style: FStyles.headline4s,
      ),
      leading: leading,
      subtitle: subtitle,
      trailing: trailing,
    );
  }
}
