import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:telegram/core/constants/colors/color_const.dart';
import 'package:telegram/screens/mainview/cubit/main_cubit.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  const BottomNavigationBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: context.watch<MainCubit>().currentpage,
        type: BottomNavigationBarType.fixed,
        onTap: (v) => context.read<MainCubit>().pages(v),
        fixedColor: ColorConst.kPrimaryColor,
        items: [
          BottomNavigationBarItem(icon: SvgPicture.asset('assets/icons/contact.svg'), label: 'Contact',),
          BottomNavigationBarItem(icon: SvgPicture.asset('assets/icons/call.svg'), label: 'Call'),
          BottomNavigationBarItem(icon: SvgPicture.asset('assets/icons/chat.svg'), label: 'Chats'),
          BottomNavigationBarItem(
              icon: CircleAvatar(
                radius: 15.0,
                backgroundColor: ColorConst.kPrimaryColor,
              ),
              label: 'Settings'),
        ]);
  }
}
