import 'package:flutter/material.dart';
import 'package:telegram/core/components/boxdecorations/box_only_decoration.dart';
import 'package:telegram/core/constants/colors/color_const.dart';
import 'package:telegram/core/constants/font/font_style.dart';
import 'package:telegram/core/extensions/context_extension.dart';

class AllMissedWidget extends StatelessWidget {
  const AllMissedWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            width: context.w * 0.4,
            height: context.h * 0.05,
            alignment: Alignment.centerRight,
            child: Text(
              "Missed",
              style: FStyles.headline3s,
            ),
            padding: EdgeInsets.only(right: context.w * 0.02),
            decoration: BoxOnlyDecoration.decor(ColorConst.kGrey,
                topLeft: 10,
                topRight: 10.0,
                bottomLeft: 10.0,
                bottomRight: 10.0)),
        Positioned(
          top: context.h * 0.005,
          left: context.w * 0.01,
          child: Container(
            alignment: Alignment.center,
            child: Text(
              "All",
              style: FStyles.headline3s,
            ),
            width: context.w * 0.2,
            height: context.h * 0.04,
            decoration: BoxOnlyDecoration.decor(ColorConst.kWhite,
                topLeft: 10,
                topRight: 10.0,
                bottomLeft: 10.0,
                bottomRight: 10.0),
          ),
        )
      ],
    );
  }
}
