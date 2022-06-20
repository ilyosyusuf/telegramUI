import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:telegram/core/constants/font/font_style.dart';

class SettingChatListileWidgets extends StatelessWidget {
  final Map user;
  const SettingChatListileWidgets({required this.user, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: CupertinoColors.white,
      alignment: Alignment.center,
      child: ListTile(
          leading: CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage(user['image_url']),
          ),
          title: Text(
            user['name'],
            style: FStyles.headline4sbold,
          ),
          subtitle: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Text(user['main_number']), Text(user['username'])],
          ),
          trailing: Icon(Icons.chevron_right_outlined)),
    );
  }
}
