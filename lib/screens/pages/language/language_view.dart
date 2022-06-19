import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:telegram/core/constants/colors/color_const.dart';
import 'package:telegram/core/constants/font/font_style.dart';
import 'package:telegram/core/extensions/context_extension.dart';
import 'package:telegram/screens/pages/language/language_list.dart';
import 'package:telegram/widgets/appbarwidget/appbarwidget.dart';
import 'package:telegram/widgets/buttons/back_button.dart';
import 'package:telegram/widgets/listtilewidget/list_tile_widget.dart';

class LanguageView extends StatelessWidget {
  const LanguageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return languageScaffold(context);
  }

  Scaffold languageScaffold(BuildContext context) {
    var langs = Languages.langList;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            AppBarWidget(
              leading: BackButtonWidgets(ontap: (){}),
              center: Text(
                "Language",
                style: FStyles.headline3bold,
              ),
              trailing: SizedBox(width: context.w * 0.15),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: CupertinoSearchTextField(),
                    ),
                    SizedBox(
                      height: 1000,
                      child: ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: langs[0].length,
                        itemBuilder: (context, i) {
                          return ListTileWidget(
                            title: Text(
                              "${langs[0][i]}",
                              style: FStyles.headline3s,
                            ),
                            subtitle: Text("${langs[1][i]}",
                                style: FStyles.headline52),
                            trailing: langs[0][i] == "English"
                                ? SvgPicture.asset('assets/icons/selected.svg')
                                : SizedBox(),
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
