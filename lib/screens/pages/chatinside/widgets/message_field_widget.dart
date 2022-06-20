import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:telegram/core/constants/colors/color_const.dart';
import 'package:telegram/core/extensions/context_extension.dart';

class MessageFieldWidget extends StatelessWidget {
  const MessageFieldWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Center(child: SvgPicture.asset('assets/icons/shape.svg')),
        SizedBox(
            width: context.w * 0.8,
            child: CupertinoTextField(
              textInputAction: TextInputAction.send,
              suffix: SvgPicture.asset('assets/icons/message.svg'),
              decoration: BoxDecoration(
                  border: Border.all(color: ColorConst.kGrey, width: 1),
                  borderRadius: BorderRadius.circular(15.0)),
            )),
        SvgPicture.asset('assets/icons/microphone.svg')
      ],
    );
  }
}
