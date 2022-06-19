import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:telegram/core/constants/font/font_style.dart';

class SettingListtileWidget extends StatelessWidget {
  final String text;
  final Widget icon;
  const SettingListtileWidget(
      {required this.icon, required this.text, Key? key})
      : super(key: key);
           
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        color: CupertinoColors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: icon,
              title: Text(
                text,
                style: FStyles.headline4s,
              ),
              trailing: Icon(Icons.chevron_right_outlined),
            ),
          ],
        ));
  }
}