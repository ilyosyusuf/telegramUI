import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:telegram/core/constants/font/font_style.dart';
import 'package:telegram/core/extensions/context_extension.dart';
import 'package:telegram/screens/mainview/cubit/main_cubit.dart';
import 'package:telegram/widgets/appbarwidget/appbarwidget.dart';
import 'package:telegram/widgets/listtilewidget/list_tile_widget.dart';

class ContactsView extends StatelessWidget {
  const ContactsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return contactsScaffold(context);
  }

  Scaffold contactsScaffold(BuildContext context) {
    var users = context.watch<MainCubit>().usersList;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            AppBarWidget(
              leading: SizedBox(width: context.w * 0.05),
              center: Text(
                "Contacts",
                style: FStyles.headline3bold,
              ),
              trailing: SvgPicture.asset('assets/icons/plus.svg'),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ListTile(
                        leading: SizedBox(
                          width: context.w * 0.2,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: context.w * 0.03,
                              ),
                              CircleAvatar(
                                radius: 30,
                                backgroundColor: Colors.white,
                                child: SvgPicture.asset(
                                    'assets/icons/location.svg'),
                              ),
                            ],
                          ),
                        ),
                        title: Text(
                          "Add People Nearby",
                          style: FStyles.headline3blue,
                        )),
                    Divider(thickness: 1),
                    ListTile(
                        leading: SizedBox(
                          width: context.w * 0.2,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(width: context.w * 0.03),
                              CircleAvatar(
                                radius: 30,
                                backgroundColor: Colors.white,
                                child:
                                    SvgPicture.asset('assets/icons/invite.svg'),
                              ),
                            ],
                          ),
                        ),
                        title: Text(
                          "Invite Friends",
                          style: FStyles.headline3blue,
                        )),
                    Divider(thickness: 1),
                    SizedBox(
                      height: 1000,
                      child: ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: users.length,
                        itemBuilder: (context, i) {
                          return ListTileWidget(
                            // user: users[i],
                            leading: SizedBox(
            width: context.w * 0.20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: context.w * 0.05,
                  
                ),
                CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage(users[i]['image_url']),
                ),
              ],
            ),
          ),
                            title: Text(
                              "${users[i]['name'].toString()} ${users[i]['surname'].toString()}",
                              style: FStyles.headline3s,
                            ),
                            subtitle: Text(users[i]['status'],
                                style: users[i]['status'] == "online"
                                    ? FStyles.headline5blue
                                    : FStyles.headline52),
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
