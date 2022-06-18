import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:telegram/core/components/boxdecorations/box_only_decoration.dart';
import 'package:telegram/core/constants/colors/color_const.dart';
import 'package:telegram/core/constants/font/font_size.dart';
import 'package:telegram/core/constants/font/font_style.dart';
import 'package:telegram/core/extensions/context_extension.dart';
import 'package:telegram/screens/mainview/cubit/main_cubit.dart';

class ChatPage extends StatelessWidget {
  // final List<dynamic> users;
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
          Container(
            height: context.h * 0.07,
            color: Colors.amber,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: CupertinoSearchTextField(),
                  ),
                  // Text(users[0]["name"])
                  SizedBox(
                    height: 700,
                    child: ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        itemExtent: 90,
                        itemCount: 7,
                        itemBuilder: (context, i) {
                          return Column(
                            children: [
                              ListTile(
                                leading: CircleAvatar(
                                  radius: 30,
                                    backgroundImage: AssetImage(users[i]['image_url']),
                                    ),
                                title: Text(
                                  "${users[i]['name'].toString()} "
                                  " ${users[i]['surname'].toString()}",
                                  style: FStyles.headline3s,
                                ),
                                subtitle: Text(users[i]['message'].toString()),
                                trailing: SizedBox(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(users[i]['moment'], style: TextStyle(color: Colors.grey),),
                                      // Chip(label: )
                                    Container(
                                      alignment: Alignment.center,
                                        width: context.w * 0.1,
                                        height: context.h * 0.03,
                                        child: Text(users[i]['pin'], style: TextStyle(color: Colors.white), overflow: TextOverflow.clip,),
                                        decoration: BoxOnlyDecoration.decor(Colors.grey.shade400, topLeft: 10.0, topRight: 10.0, bottomLeft: 10.0, bottomRight: 10.0)
                                      )
                                      
                                    ],
                                  ),
                                ),
                              ),
                              Divider(thickness: 1)
                            ],
                          );
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
