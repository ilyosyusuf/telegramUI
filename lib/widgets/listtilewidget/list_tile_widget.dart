import 'package:flutter/material.dart';

class ListTileWidget extends StatelessWidget {
  Widget? trailing;
  Widget? subtitle;
  Widget title;
  Widget? leading;
  ListTileWidget(
      {Key? key,
      this.trailing,
      this.subtitle,
      required this.title, 
      this.leading
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(          
          onTap: () {},
          leading: leading,
          // leading: SizedBox(
          //   width: context.w * 0.20,
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     children: [
          //       SizedBox(
          //         width: context.w * 0.05,
          //         child: call,
          //       ),
          //       CircleAvatar(
          //         radius: 25,
          //         backgroundImage: AssetImage(user['image_url']),
          //       ),
          //     ],
          //   ),
          // ),
          title: title,
          subtitle: subtitle,
          trailing: trailing,
        ),
        Divider(thickness: 1)
      ],
    );
  }
}
