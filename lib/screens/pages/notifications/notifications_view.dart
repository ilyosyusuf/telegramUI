import 'package:flutter/material.dart';
import 'package:telegram/config/init/navigation/navigator.dart';
import 'package:telegram/core/constants/colors/color_const.dart';
import 'package:telegram/core/constants/font/font_style.dart';
import 'package:telegram/core/extensions/context_extension.dart';
import 'package:telegram/widgets/appbarwidget/appbarwidget.dart';
import 'package:telegram/widgets/buttons/back_button.dart';

class NotificationView extends StatelessWidget {
  NotificationView({Key? key}) : super(key: key);

  bool _allAccounts = true;
  bool _showNotificationsM = true;
  bool _showNotificationsG = false;
  bool _messagePreviewM = false;
  bool _messagePreviewG = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.kBackground,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppBarWidget(
                  // leading: TextButton(
                  //   onPressed: () => NavigationService.instance.pop(''),
                  //   child: const Text("Back",)
                  // ),
                  leading: BackButtonWidgets(
                    text: "Back",
                    ontap: (){
                          Navigator.pop(context);
                    }),
                  center: Center(
                    child: Text("Notifications", style: FStyles.headline3bold),
                  ),
                  trailing: SizedBox(width: context.w * 0.06),
                ),
                Padding(
                  padding: EdgeInsets.all(15.0),
                  child:
                      Text("SHOW NOTIFICATIONS FROM", style: FStyles.headline4sgrey),
                ),
                SwitchListTile(
                  tileColor: ColorConst.kWhite,
                  title: Text(
                    "All Accounts",
                    style: FStyles.headline4s,
                  ),
                  value: _allAccounts,
                  onChanged: (bool value) {},
                ),
                Padding(
                  padding: EdgeInsets.only(top: context.h * 0.01, left: context.h * 0.01, bottom: context.h * 0.01),
                  child: Text(
                      "Turn this off if you want to receive notifications only from your active account.",
                      style: FStyles.headline4s),
                ),
                Padding(
                  padding: EdgeInsets.all(15.0),
                  child:
                      Text("MESSAGE NOTIFICATIONS", style: FStyles.headline4sgrey),
                ),
                SwitchListTile(
                  tileColor: ColorConst.kWhite,
                  title: Text(
                    "Show Notifications",
                    style: FStyles.headline4s,
                  ),
                  value: _showNotificationsM,
                  onChanged: (bool value) {},
                ),
                divider(),
                SwitchListTile(
                  tileColor: ColorConst.kWhite,
                  title: Text(
                    "Message Preview",
                    style: FStyles.headline4s,
                  ),
                  value: _messagePreviewM,
                  onChanged: (bool value) {},
                ),
                divider(),
                ListTile(
                  tileColor: ColorConst.kWhite,
                  title: Text(
                    "Sound",
                    style: FStyles.headline4s,
                  ),
                  trailing: Text("None", style: FStyles.headline4sgrey),
                ),
                divider(),
                ListTile(
                  tileColor: ColorConst.kWhite,
                  title: Text(
                    "Exceptions",
                    style: FStyles.headline4sgrey,
                  ),
                  trailing: Text("66 chats", style: FStyles.headline4sgrey),
                ),
                divider(),
                Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text("Set custom notifications for specific users.",
                      style: FStyles.headline4sgrey),
                ),
                Padding(
                  padding: EdgeInsets.all(15.0),
                  child:
                      Text("GROUP NOTIFICATIONS", style: FStyles.headline4sgrey),
                ),
                SwitchListTile(
                  tileColor: ColorConst.kWhite,
                  title: Text(
                    "Show Notifications",
                    style: FStyles.headline4sgrey,
                  ),
                  value: _showNotificationsG,
                  onChanged: (bool value) {},
                ),
                divider(),
                SwitchListTile(
                  tileColor: ColorConst.kWhite,
                  title: Text(
                    "Message Preview",
                    style: FStyles.headline4sgrey,
                  ),
                  value: _messagePreviewG,
                  onChanged: (bool value) {},
                ),
                divider(),
                ListTile(
                  tileColor: ColorConst.kWhite,
                  title: Text(
                    "Sound",
                    style: FStyles.headline4s,
                  ),
                  trailing: Text("None", style: FStyles.headline4sgrey),
                ),
                divider(),
                ListTile(
                  tileColor: ColorConst.kWhite,
                  title: Text(
                    "Exceptions",
                    style: FStyles.headline4s,
                  ),
                  trailing: Text("Add", style: FStyles.headline4sgrey),
                ),
                divider(),
                Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text("Set custom notifications for specific groups.",
                      style: FStyles.headline4sgrey),
                ),
                Padding(
                  padding: EdgeInsets.all(15.0),
                  child:
                      Text("CHANNEL NOTIFICATIONS", style: FStyles.headline3gray),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Divider divider() {
    return Divider(
              height: 1,
              color: ColorConst.kGrey,
              thickness: 1,
              indent: 16,
            );
  }
}
