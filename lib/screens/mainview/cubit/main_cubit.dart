import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:telegram/screens/mainview/state/main_state.dart';
import 'package:flutter/services.dart' as bundle;

class MainCubit extends Cubit<MainState> {
  MainCubit() : super(CallState());

  List usersList = [];

  Future getUsers() async {
    final data = await bundle.rootBundle.loadString('lib/core/mock/users.json');
    usersList = jsonDecode(data) as List;
    // usersList = lst;
    print(usersList);
    // emit(ChatState());
    // emit(ContactState());
    emit(CallState());
    return usersList;
  }

  int currentpage = 2;

  pages(int index) {
    currentpage = index;
    if (index == 0) {
      emit(ContactState());
    } else if (index == 1) {
      emit(CallState());
    } else if (index == 2) {
      emit(ChatState());
    } else {
      emit(SettingState());
    }
  }

  // bools for notification page
  bool allAccounts = true;
  bool showNotificationsM = true;
  bool showNotificationsG = false;
  bool messagePreviewM = false;
  bool messagePreviewG = false;

  // functions for notification page
  changeAllAcc(bool value) {
    allAccounts = !allAccounts;
    emit(SettingState());
  }

  changeShowNotifyM(bool value) {
    showNotificationsM = !showNotificationsM;
    emit(SettingState());
  }

  changeMesPreM(bool value) {
    messagePreviewM = !messagePreviewM;
    emit(SettingState());
  }

  changeShowNotifyG(bool value) {
    showNotificationsG = !showNotificationsG;
    emit(SettingState());
  }

  changeMesPreG(bool value) {
    messagePreviewG = !messagePreviewG;
    emit(SettingState());
  }
}
