import 'package:flutter/material.dart';
import 'package:telegram/config/init/navigation/navigator.dart';
import 'package:telegram/core/constants/colors/color_const.dart';
import 'package:telegram/core/constants/font/font_style.dart';
import 'package:telegram/core/extensions/context_extension.dart';
import 'package:telegram/widgets/appbarwidget/appbarwidget.dart';
import 'package:telegram/widgets/listtilewidget/list_tile_widget.dart';

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
              leading: TextButton(
                onPressed: () => NavigationService.instance.pop(''),
                child: const Text("Back"),
              ),
              center: const Text("Data and Storage", style: FStyles.headline4s),
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
                    ListTileWidget(
                      title: Text("Storage Usage", style: FStyles.headline3s),
                      trailing: Icon(Icons.chevron_right_outlined),
                    ),
                    divider(),
                    ListTileWidget(
                                            title: Text("Storage Usage", style: FStyles.headline3s),

                      trailing: Icon(Icons.chevron_right_outlined),
                    ),
                    divider(),
                    Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Text("AUTOMATIC MEDIA DOWNLOAD")),
                    ListTileWidget(
                      title: Text("Using cellular", style: FStyles.headline3s),
                      subtitle: Text(
                        "Disabled",
                        style: FStyles.headline4sgrey,
                      ),
                      trailing: const Icon(Icons.chevron_right_outlined),
                    ),
                    divider(),
                    ListTileWidget(
                      title: Text("Using Wi-Fi", style: FStyles.headline3s),
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
                    ListTileWidget(
                      title: Text("GIFs", style: FStyles.headline3s),
                      trailing: Switch.adaptive(
                        value: true,
                        onChanged: (bool value) {},
                      ),
                    ),
                    divider(),
                    ListTileWidget(
                      title: Text("Videos", style: FStyles.headline3s),
                      trailing: Switch.adaptive(
                          value: false, onChanged: (bool value) {}),
                    ),
                    Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Text("VOICE CALLS"),
                    ),
                    ListTileWidget(
                      title: Text("Use Less Data", style: FStyles.headline3s),
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
                    ListTileWidget(
                      title: Text("Save Incoming Photos", style: FStyles.headline3s),
                      trailing: Icon(Icons.chevron_right_outlined),
                    ),
                    ListTileWidget(
                      title: Text("SSave Edited Photos", style: FStyles.headline3s),
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