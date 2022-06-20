import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:telegram/config/init/navigation/navigator.dart';
import 'package:telegram/core/constants/colors/color_const.dart';
import 'package:telegram/core/constants/font/font_style.dart';
import 'package:telegram/core/extensions/context_extension.dart';
import 'package:telegram/widgets/appbarwidget/appbarwidget.dart';
import 'package:telegram/widgets/buttons/back_button.dart';
import 'package:telegram/widgets/listtilewidget/list_tile_widget.dart';
import 'package:telegram/widgets/listtilewidget/settings_list_tile_widget.dart';

class PrivacyAndSecurityView extends StatelessWidget {
  const PrivacyAndSecurityView({Key? key}) : super(key: key);

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
              color: ColorConst.kAppBar,
              leading: BackButtonWidgets(ontap: () {
                Navigator.pop(context);
              }),
              center: const Text(
                "Privacy and Security",
                style: FStyles.headline3bold,
              ),
              trailing: SizedBox(width: context.w * 0.1),
            ),
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: context.h * 0.01),
                  SettingsListTileWidget(
                    leading: SvgPicture.asset('assets/icons/block.svg'),
                    text: "Blocked Users",
                    trailing: SizedBox(
                      width: context.w * 40 / 375,
                      height: context.h * 0.1,
                      child: Row(
                        children: [
                          Text(
                            "9",
                            style: FStyles.headline4sgrey,
                          ),
                          Icon(Icons.chevron_right_outlined),
                        ],
                      ),
                    ),
                  ),
                  divider(),
                  SettingsListTileWidget(
                    leading: SvgPicture.asset('assets/icons/active.svg'),
                    text: "Active Sessions",
                    trailing: SizedBox(
                      width: context.w * 40 / 375,
                      height: context.h * 0.04,
                      child: Row(
                        children: [
                          Text(
                            "2",
                            style: FStyles.headline4sgrey,
                          ),
                          const Icon(Icons.chevron_right_outlined),
                        ],
                      ),
                    ),
                  ),
                  divider(),
                  SettingsListTileWidget(
                    leading: SvgPicture.asset('assets/icons/face.svg'),
                    text: "Passcode & Face ID",
                    trailing: SizedBox(
                      width: context.w * 57 / 375,
                      height: context.h * 0.03,
                      child: Row(
                        children: [
                          Text(
                            "Off",
                            style: FStyles.headline4sgrey,
                          ),
                          const Icon(Icons.chevron_right_outlined),
                        ],
                      ),
                    ),
                  ),
                  divider(),
                  SettingsListTileWidget(
                    leading: SvgPicture.asset('assets/icons/key.svg'),
                    text: "Two-Step Werification",
                    trailing: SizedBox(
                      width: context.w * 53 / 375,
                      height: context.h * 0.04,
                      child: Row(
                        children: [
                          Text(
                            "On",
                            style: FStyles.headline4sgrey,
                          ),
                          const Icon(Icons.chevron_right_outlined),
                        ],
                      ),
                    ),
                  ),
                  divider(),
                  Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Text(
                      'PRIVACY',
                      style: FStyles.headline4sgrey,
                    ),
                  ),
                  SettingsListTileWidget(
                    text: "Phone Number",
                    trailing: SizedBox(
                      width: context.w * 139 / 375,
                      height: context.h * 0.02,
                      child: Row(
                        children: [
                          Text(
                            "My Contacts",
                            style: FStyles.headline4sgrey,
                          ),
                          const Icon(Icons.chevron_right_outlined),
                        ],
                      ),
                    ),
                  ),
                  divider(),
                  SettingsListTileWidget(
                    text: "last seen & online",
                    trailing: SizedBox(
                      width: context.w * 148 / 375,
                      height: context.h * 0.04,
                      child: Row(
                        children: [
                          Text(
                            "Nobody (+14)",
                            style: FStyles.headline4sgrey,
                          ),
                          const Icon(Icons.chevron_right_outlined),
                        ],
                      ),
                    ),
                  ),
                  divider(),
                  SettingsListTileWidget(
                    text: "Profile Photo",
                    trailing: SizedBox(
                      width: context.w * 121 / 375,
                      height: context.h * 0.03,
                      child: Row(
                        children: [
                          Text(
                            "Everybody",
                            style: FStyles.headline4sgrey,
                          ),
                          const Icon(Icons.chevron_right_outlined),
                        ],
                      ),
                    ),
                  ),
                  divider(),
                  SettingsListTileWidget(
                    text: "Voice calls",
                    trailing: SizedBox(
                      width: context.w * 139 / 375,
                      height: context.h * 0.2,
                      child: Row(
                        children: [
                          Text(
                            "Nobody (+7)",
                            style: FStyles.headline4sgrey,
                          ),
                          const Icon(Icons.chevron_right_outlined),
                        ],
                      ),
                    ),
                  ),
                  divider(),
                  SettingsListTileWidget(
                    text: "Forwarded Messages",
                    trailing: SizedBox(
                      width: context.w * 121 / 375,
                      height: context.h * 0.3,
                      child: Row(
                        children: [
                          Text(
                            "Everybody",
                            style: FStyles.headline4sgrey,
                          ),
                          const Icon(Icons.chevron_right_outlined),
                        ],
                      ),
                    ),
                  ),
                  divider(),
                  SettingsListTileWidget(
                    text: "Groups & Channels",
                    trailing: SizedBox(
                      width: context.w * 121 / 375,
                      height: context.h * 0.3,
                      child: Row(
                        children: [
                          Text(
                            "Everybody",
                            style: FStyles.headline4sgrey,
                          ),
                          const Icon(Icons.chevron_right_outlined),
                        ],
                      ),
                    ),
                  ),
                  divider(),
                  Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Text(
                        "Change who can add you to groups and channels.",
                        style: FStyles.headline4sgrey,
                      )),
                  Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Text(
                        "AUTOMATICALLY DELETE MY ACCOUNT",
                        style: FStyles.headline4sgrey,
                      )),
                  SettingsListTileWidget(
                    text: "If Away For",
                    trailing: SizedBox(
                      width: context.w * 101 / 375,
                      height: context.h * 0.05,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "6 month",
                            style: FStyles.headline4sgrey,
                          ),
                          const Icon(Icons.chevron_right_outlined),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Text(
                        "",
                        style: FStyles.headline4sgrey,
                      )),
                ],
              ),
            ))
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
      indent: 70,
    );
  }
}
