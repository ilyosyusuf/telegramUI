import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:telegram/config/init/navigation/navigator.dart';
import 'package:telegram/core/constants/colors/color_const.dart';
import 'package:telegram/core/constants/font/font_style.dart';
import 'package:telegram/core/extensions/context_extension.dart';
import 'package:telegram/widgets/appbarwidget/appbarwidget.dart';
import 'package:telegram/widgets/listtilewidget/list_tile_widget.dart';

class PrivacyAndSecurityView extends StatelessWidget {
  const PrivacyAndSecurityView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return scaffold(context);
  }

  Scaffold scaffold(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.kBackground,
      body: SafeArea(
        child: Column(
          children: [
            AppBarWidget(
              color: ColorConst.kAppBar,
              leading: TextButton(
                onPressed: () => NavigationService.instance.pop(''),
                child: const Text("Back"),
              ),
              center:
                  const Text("Privacy and Security", style: FStyles.headline4s),
              trailing: SizedBox(width: context.w * 0.1),
            ),
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: context.h * 0.01),
                  ListTileWidget(
                    leading: Icon(Icons.abc),
                    // text: "Blocked Users",
                    title: Text("Blocked Users", style: FStyles.headline3s,),
                    trailing: SizedBox(
                      width: context.w * 40 / 375,
                      height: context.h * 0.1,
                      child: Row(
                        children:[
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
                  ListTileWidget(
                    leading: Icon(Icons.abc),
                              title: Text("Blocked Users", style: FStyles.headline3s,),

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
                  ListTileWidget(
                    leading: Icon(Icons.abc),
                                       title: Text("Passcode & Face ID", style: FStyles.headline3s,),

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
                  ListTileWidget(
                    leading: Icon(Icons.abc),
                                        title: Text("Two-Step Werification", style: FStyles.headline3s,),
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
                  ListTileWidget(
                    title: Text("Phone Number", style: FStyles.headline3s,),
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
                  ListTileWidget(
                    title: Text("last seen & online", style: FStyles.headline3s,),
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
                  ListTileWidget(
                    title: Text("Profile Photo", style: FStyles.headline3s,),
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
                  ListTileWidget(
                    title: Text("Voice calls", style: FStyles.headline3s,),
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
                  ListTileWidget(
                    title: Text("Forwarded Messages", style: FStyles.headline3s,),
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
                  ListTileWidget(
                    title: Text("Groups & Channels", style: FStyles.headline3s,),
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
                  ListTileWidget(
                    title: Text("If Away For", style: FStyles.headline3s,),
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