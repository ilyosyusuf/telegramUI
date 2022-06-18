import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:telegram/core/constants/font/font_style.dart';
import 'package:telegram/core/extensions/context_extension.dart';
import 'package:telegram/screens/mainview/cubit/main_cubit.dart';
import 'package:telegram/screens/pages/calls/widgets/all_missed_widget.dart';
import 'package:telegram/widgets/appbarwidget/appbarwidget.dart';
import 'package:telegram/widgets/listtilewidget/list_tile_widget.dart';

class CallsView extends StatelessWidget {
  const CallsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return callsScaffold(context);
  }

  Scaffold callsScaffold(BuildContext context) {
    var users = context.watch<MainCubit>().usersList;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            AppBarWidget(
              leading: InkWell(
                child: Text("Edit", style: FStyles.headline3blue),
              ),
              center: AllMissedWidget(),
              trailing: SvgPicture.asset('assets/icons/call_plus.svg'),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 1000,
                      child: ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: users.length,
                        itemBuilder: (context, i) {
                          return ListTileWidget(
                            user: users[i],
                            title: Text(
                                "${users[i]['name'].toString()} "
                                " ${users[i]['surname'].toString()}",
                                style: users[i]['call'] == "Missed"
                                    ? FStyles.headline3red
                                    : FStyles.headline3s),
                            call: users[i]['outgoing'] == true
                                ? SvgPicture.asset(
                                    'assets/icons/outgoing_call.svg',
                                    width: 30)
                                : SizedBox(),
                            subtitle: Text(users[i]['call'],
                                style: FStyles.headline52),
                            trailing: SizedBox(
                              width: context.w * 0.21,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    users[i]['info'],
                                    style: FStyles.headline4grey,
                                  ),
                                  SizedBox(width: context.w * 0.02),
                                  SvgPicture.asset('assets/icons/info.svg')
                                ],
                              ),
                            ),
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
