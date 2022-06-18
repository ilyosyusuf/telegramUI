import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:telegram/screens/mainview/cubit/main_cubit.dart';
import 'package:telegram/screens/mainview/state/main_state.dart';
import 'package:telegram/screens/pages/calls/pages/calls_view.dart';
import 'package:telegram/screens/pages/chats/pages/chat_view.dart';
import 'package:telegram/screens/pages/contacts/contacts_view.dart';

class MainView extends StatelessWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (context){
      var data = MainCubit();
      data.getUsers();
      return data;
    },
    child: mainScaffold()
    );
  }

  Scaffold mainScaffold() {
    return Scaffold(
    body: BlocConsumer<MainCubit, MainState>(
        listener: (context, state) {},
        builder: (context, state) {
          if (state is ChatState) {
            return  ChatView();
          } else if (state is CallState) {
            return CallsView();
          } else if (state is ContactState) {
            return ContactsView();
          } else if (state is SettingState) {
            return const Center(
              child: Text('Settings'),
            );
          } else {
            return Container();
          }
        }),
  );
  }
}