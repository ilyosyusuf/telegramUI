import 'package:flutter/material.dart';
import 'package:telegram/core/extensions/context_extension.dart';

class AppBarWidget extends StatelessWidget {
  final Widget leading;
  final Widget center;
  final Widget trailing;
  const AppBarWidget({this.trailing = const SizedBox(),this.center = const SizedBox(),required this.leading,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.h * 0.07,
      width: context.w,
      child: Align(
        alignment: Alignment.center,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: context.w * 0.02),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              leading,
              center,
              trailing
            ],
          ),
        ),
      ),
    );
  }
}