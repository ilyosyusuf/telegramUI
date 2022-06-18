import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:telegram/core/components/boxdecorations/box_only_decoration.dart';
import 'package:telegram/core/constants/font/font_style.dart';
import 'package:telegram/core/extensions/context_extension.dart';
import 'package:telegram/screens/pages/chats/widgets/dismiss_widget.dart';

class ChatListTileWidget extends StatelessWidget {
  Map user;
  ChatListTileWidget({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DissmissWidget(listTile: Column(
      children: [
        ListTile(
          onTap: (){},
          onLongPress: (){},
          leading: CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage(user['image_url']),
          ),
          title: Text(
            "${user['name'].toString()} "
            " ${user['surname'].toString()}",
            style: FStyles.headline3s,
          ),
          subtitle: Text(user['message'].toString()),
          trailing: SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  user['moment'],
                  style: TextStyle(color: Colors.grey),
                ),
                user['pin'] == "pinned" ? SvgPicture.asset('assets/icons/pin.svg') :
                Container(
                    alignment: Alignment.center,
                    width: context.w * 0.1,
                    height: context.h * 0.03,
                    child:
                     Text(
                      user['pin'],
                      style: TextStyle(color: Colors.white),
                      overflow: TextOverflow.clip,
                    ),
                    decoration: BoxOnlyDecoration.decor(Colors.grey.shade400,
                        topLeft: 10.0,
                        topRight: 10.0,
                        bottomLeft: 10.0,
                        bottomRight: 10.0))
              ],
            ),
          ),
        ),
        Divider(thickness: 1)
      ],
    ));
  }
}
