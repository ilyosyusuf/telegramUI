import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:telegram/core/constants/colors/color_const.dart';
import 'package:telegram/core/constants/font/font_style.dart';
import 'package:telegram/core/extensions/context_extension.dart';
import 'package:telegram/widgets/appbarwidget/appbarwidget.dart';
import 'package:telegram/widgets/listtilewidget/list_tile_widget.dart';

class AppearanceView extends StatelessWidget {
  const AppearanceView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double value = 0.0;
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
        body: SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppBarWidget(
            leading:
                BackButton(color: ColorConst.kPrimaryColor, onPressed: () {}),
            center: Text(
              "Appearance",
              style: FStyles.headline3bold,
            ),
            trailing: SvgPicture.asset('assets/icons/upload.svg'),
          ),
          SizedBox(
            height: context.h * 0.03,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text("COLOR THEME", style: FStyles.headline4grey),
          ),
          Container(
            width: context.w,
            height: context.h * 0.15,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image:
                        AssetImage('assets/images/appearance_background.png'))),
          ),
          Container(
              width: context.w,
              height: context.h * 0.15,
              color: ColorConst.kWhite,
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('assets/images/classic.png', width: 100),
                  Image.asset('assets/images/day.png', width: 100),
                  Image.asset('assets/images/night.png', width: 100),
                ],
              )),
          SizedBox(height: context.h * 0.03),
          Container(
            color: ColorConst.kWhite,
            child: ListTileWidget(
                title: Text("Chat Background"),
                trailing: Icon(Icons.chevron_right)),
          ),
          Container(
            color: ColorConst.kWhite,
            child: ListTileWidget(
              title: Text("Auto-Night Mode"),
              trailing: SizedBox(
                width: context.w * 0.25,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "Disabled",
                      style: FStyles.headline4grey,
                    ),
                    Icon(Icons.chevron_right)
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: context.h * 0.03,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text("TEXT SIZE", style: FStyles.headline4grey),
          ),
          StatefulBuilder(builder: (context, setState) {
            return Container(
              width: context.w,
              color: ColorConst.kWhite,
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  Text("A", style: FStyles.headline4s),
                  Expanded(
                    child: CupertinoSlider(
                      divisions: 10,
                      max: 10.0,
                      value: value,
                      activeColor: ColorConst.kPrimaryColor,
                      onChanged: (data) {
                        setState(() {
                          value = data;
                        });
                      },
                    ),
                  ),
                  Text("A", style: FStyles.headline1s),
                ],
              ),
            );
          }),
          SizedBox(
            height: context.h * 0.03,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text("APP ICON", style: FStyles.headline4grey),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(14.0),
              width: context.w,
              color: ColorConst.kWhite,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('assets/images/tgimages/default.png', width: 80),
                  Image.asset('assets/images/tgimages/defaultx.png', width: 80),
                  Image.asset('assets/images/tgimages/classictg.png', width: 80),
                  Image.asset('assets/images/tgimages/classicx.png', width: 80),
                ],
              ),
            )
          )
        ],
      ),
    ));
  }
}
