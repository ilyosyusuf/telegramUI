import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:telegram/core/components/boxdecorations/box_only_decoration.dart';
import 'package:telegram/core/constants/font/font_style.dart';
import 'package:telegram/core/extensions/context_extension.dart';
import 'package:telegram/screens/mainview/cubit/main_cubit.dart';
import 'package:telegram/screens/pages/chats/widgets/chat_list_tile_widget.dart';
import 'package:telegram/widgets/appbarwidget/appbarwidget.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return chatScaffold(context);
  }

  Scaffold chatScaffold(BuildContext context) {
    var users =  context.watch<MainCubit>().usersList;
    return Scaffold(
        body: SafeArea(
      bottom: false,
      child: Column(
        children: [
          AppBarWidget(leading: InkWell(child: Text("Edit", style: FStyles.headline3blue)), center: Text("Chats", style: FStyles.headline3bold,), trailing: SvgPicture.asset('assets/icons/edit.svg'),),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: CupertinoSearchTextField(),
                  ),
                  SizedBox(
                    height: 700,
                    child: ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        itemExtent: 90,
                        itemCount: 7,
                        itemBuilder: (context, i) {
                          return ChatListTileWidget(user: users[i]);
                        }),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
