import 'package:flutter/material.dart';
import 'package:telegram/config/init/navigation/navigator.dart';
import 'package:telegram/core/constants/colors/color_const.dart';
import 'package:telegram/core/constants/font/font_style.dart';
import 'package:telegram/core/extensions/context_extension.dart';
import 'package:telegram/widgets/appbarwidget/appbarwidget.dart';
import 'package:telegram/widgets/buttons/back_button.dart';
import 'package:telegram/widgets/listtilewidget/list_tile_widget.dart';
import 'package:telegram/widgets/listtilewidget/settings_list_tile_widget.dart';

class DataAndStorage extends StatelessWidget {
  const DataAndStorage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return scaffold(context);
  }

  Scaffold scaffold(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.kBackgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            AppBarWidget(
              leading: BackButtonWidgets(ontap: (){
                Navigator.pop(context);
              }),
              center: const Text("Data and Storage", style: FStyles.headline3bold),
              trailing: SizedBox(width: context.w * 0.07),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: context.w * 0.04,
                    ),
                    SettingsListTileWidget(
                      text: "Storage Usage",
                      trailing: Icon(Icons.chevron_right_outlined),
                    ),
                    divider(),
                    SettingsListTileWidget(
                                            text: "Storage Usage",

                      trailing: Icon(Icons.chevron_right_outlined),
                    ),
                    divider(),
                    Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Text("AUTOMATIC MEDIA DOWNLOAD")),
                    SettingsListTileWidget(
                      text: "Using cellular",
                      subtitle: Text(
                        "Disabled",
                        style: FStyles.headline4sgrey,
                      ),
                      trailing: const Icon(Icons.chevron_right_outlined),
                    ),
                    divider(),
                    SettingsListTileWidget(
                      text: "Using Wi-Fi",
                      subtitle: Text(
                        "Disabled",
                        style: FStyles.headline4sgrey,
                      ),
                      trailing: const Icon(Icons.chevron_right_outlined),
                    ),
                    divider(),
                    ListTile(
                      tileColor: ColorConst.kWhite,
                      title: Text(
                        "Reset Auto-Download Settings",
                        style: FStyles.headline4sgrey,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Text("AUTO-PLAY MEDIA"),
                    ),
                    SettingsListTileWidget(
                      text: "GIFs",
                      trailing: Switch.adaptive(
                        value: true,
                        onChanged: (bool value) {},
                      ),
                    ),
                    divider(),
                    SettingsListTileWidget(
                      text: "Videos",
                      trailing: Switch.adaptive(
                          value: false, onChanged: (bool value) {}),
                    ),
                    Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Text("VOICE CALLS"),
                    ),
                    SettingsListTileWidget(
                      text: "Use Less Data",
                      trailing: SizedBox(
                        width: context.w * 78 / 375,
                        height: context.w * 4,
                        child: Row(
                          children: [
                            Text("Never", style: FStyles.headline4sgrey),
                            const Icon(Icons.chevron_right_outlined)
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Text(
                        'OTHER',
                        style: FStyles.headline4s,
                      ),
                    ),
                    SettingsListTileWidget(
                      text: "Save Incoming Photos",
                      trailing: Icon(Icons.chevron_right_outlined),
                    ),
                    SettingsListTileWidget(
                      text: "Save Edited Photos",
                      trailing: Switch.adaptive(
                          value: true, onChanged: (bool value) {}),
                    ),
                  ],
                ),
              ),
            ),
          ],
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