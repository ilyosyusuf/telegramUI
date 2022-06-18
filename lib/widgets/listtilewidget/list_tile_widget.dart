import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:telegram/core/constants/font/font_style.dart';
import 'package:telegram/core/extensions/context_extension.dart';

class ListTileWidget extends StatelessWidget {
  Widget? call;
  Widget? trailing;
  Widget subtitle;
  Map user;
  ListTileWidget({Key? key, this.call, this.trailing, required this.user, required this.subtitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
                          children: [
                            ListTile(
                              leading: SizedBox(
                                width: context.w * 0.20,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                      width: context.w * 0.05,
                                      child: call,
                                    ),
                                    CircleAvatar(
                                      radius: 25,
                                      backgroundImage:
                                          AssetImage(user['image_url']),
                                    ),
                                  ],
                                ),
                              ),
                              title: Text(
                                "${user['name'].toString()} "
                                " ${user['surname'].toString()}",
                                style: FStyles.headline3s,
                              ),
                              subtitle: subtitle,
                              trailing: trailing,
                            ),
                            Divider(thickness: 1)
                          ],
                        );
  }
}

