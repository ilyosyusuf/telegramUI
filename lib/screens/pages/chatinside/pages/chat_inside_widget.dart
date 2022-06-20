import 'package:chat_bubbles/bubbles/bubble_special_three.dart';
import 'package:flutter/material.dart';
import 'package:telegram/config/init/navigation/navigator.dart';
import 'package:telegram/core/constants/colors/color_const.dart';
import 'package:telegram/core/extensions/context_extension.dart';
import 'package:telegram/screens/pages/chatinside/widgets/message_field_widget.dart';
import 'package:telegram/widgets/appbarwidget/appbarwidget.dart';
import 'package:telegram/widgets/buttons/back_button.dart';

class ChatInsideView extends StatelessWidget {
  final List data;
  const ChatInsideView({required this.data, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        bottom: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppBarWidget(
                trailing: CircleAvatar(
                  backgroundImage: AssetImage(data[1]['image_url']),
                  radius: 15.0,
                ),
                center: SizedBox(
                    width: context.w * 0.3,
                    height: context.h * 0.1,
                    child: ListTile(
                      title: Text(data[1]['name']),
                      subtitle: Text(data[1]['status']),
                    )),
                leading: BackButtonWidgets(
                    ontap: () => NavigationService.instance.pop(''))),
            Container(
              height: context.h * 0.83,
              width: context.w,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/images/chatbackground.png',
                  ),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(children: [
                  BubbleSpecialThree(
                    text: "Japan looks amazing!",
                    color: ColorConst.kGreen,
                  ),
                  const BubbleSpecialThree(
                    isSender: false,
                    text: 'Do You know what time is it?',
                  ),
                  BubbleSpecialThree(
                    text: "It's morning in Tokyo",
                    color: ColorConst.kGreen,
                  ),
                  const BubbleSpecialThree(
                    isSender: false,
                    text: 'What is the most popular meal in Japan?',
                  ),
                  const BubbleSpecialThree(
                    isSender: false,
                    text: 'Do you like it?',
                  ),
                  BubbleSpecialThree(
                    text: 'I think top two are:',
                    color: ColorConst.kGreen,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Image.asset('assets/images/chatimage.png'),
                  )
                ]),
              ),
            ),
            Spacer(),
            const MessageFieldWidget(),
                        SizedBox(
              height: context.h * 0.01,
            ),
          ],
        ),
      ),
    );
  }
}
