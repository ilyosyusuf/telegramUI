import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:telegram/config/init/navigation/navigator.dart';
import 'package:telegram/core/constants/font/font_style.dart';
import 'package:telegram/core/extensions/context_extension.dart';
import 'package:telegram/screens/mainview/cubit/main_cubit.dart';
import 'package:telegram/screens/pages/chats/widgets/chat_list_tile_widget.dart';
import 'package:telegram/screens/pages/settings/widgets/settings_chat_listtile_widget.dart';
import 'package:telegram/screens/pages/settings/widgets/settings_list_tile_widget.dart';
import 'package:telegram/widgets/appbarwidget/appbarwidget.dart';
import 'package:telegram/widgets/listtilewidget/list_tile_widget.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppBarWidget(
              leading: SizedBox(
                width: context.w * 0.05,
              ),
              center: const Text(
                'Settings',
                style: FStyles.headline3bold,
              ),
              trailing: Text(
                'Edit',
                style: FStyles.headline3blue,
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(15.0),
                      child: CupertinoSearchTextField(),
                    ),
                    SettingChatListileWidgets(
                      user: context.watch<MainCubit>().randomuser,
                    ),
                    SizedBox(height: context.h * 0.04),
                    const SettingListtileWidget(
                        icon: CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://images.unsplash.com/photo-1493612276216-ee3925520721?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=928&q=80'),
                            radius: 15.0),
                        text: 'Jacob design'),
                    SettingListtileWidget(
                        icon: SvgPicture.asset('assets/icons/plus.svg'),
                        text: 'Add account'),
                    SizedBox(
                      height: context.h * 0.05,
                    ),
                    SizedBox(
                      height: context.h * 0.2,
                      child: ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount:
                              context.watch<MainCubit>().firsthree.length,
                          itemBuilder: (context, i) {
                            return SettingListtileWidget(
                              icon: context.watch<MainCubit>().firsthree[i],
                              text: context.watch<MainCubit>().firsthreetext[i],
                            );
                          }),
                    ),
                    SizedBox(
                      height: context.h * 0.05,
                    ),
                    SizedBox(
                      height: context.h * 0.3,
                      child: ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount:
                              context.watch<MainCubit>().secondfour.length,
                          itemBuilder: (context, i) {
                            return InkWell(
                              child: SettingListtileWidget(
                                  icon:
                                      context.watch<MainCubit>().secondfour[i],

                                  // text:
                                  // "text",
                                  text: context
                                      .watch<MainCubit>()
                                      .secondfourtext[i]),
                              onTap: () {
                                if (i == 0) {
                                  NavigationService.instance
                                      .pushNamed('/notifications');
                                } else if (i == 1) {
                                  NavigationService.instance
                                      .pushNamed('/privacy');
                                } else if (i == 2) {
                                  NavigationService.instance
                                      .pushNamed('/datastorage');
                                } else if (i == 3) {
                                  NavigationService.instance
                                      .pushNamed('/appearanceview');
                                }
                              },
                            );
                          }),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
