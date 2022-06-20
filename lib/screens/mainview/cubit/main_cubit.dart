import 'dart:convert';
import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:telegram/screens/mainview/state/main_state.dart';
import 'package:flutter/services.dart' as bundle;

class MainCubit extends Cubit<MainState> {
  MainCubit() : super(ChatState());

  List usersList = [];

  Map _randomuser = {};
  get randomuser => _randomuser;

  Future getUsers() async {
    final data = await bundle.rootBundle.loadString('lib/core/mock/users.json');
    usersList = jsonDecode(data) as List;
    // usersList = lst;
    print(usersList);
    // emit(ChatState());
    // emit(ContactState());
    _randomuser = usersList[Random().nextInt(usersList.length)];
    emit(ChatState());
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

  List firsthree = [
    SvgPicture.asset('assets/images/settingimages/saved.svg'),
    SvgPicture.asset('assets/images/settingimages/recentcalls.svg'),
    SvgPicture.asset('assets/images/settingimages/stickers.svg')
  ];
  List secondfour = [
    SvgPicture.asset('assets/images/settingimages/notification.svg'),
    SvgPicture.asset('assets/images/settingimages/privacy.svg'),
    SvgPicture.asset('assets/images/settingimages/data.svg'),
    SvgPicture.asset('assets/images/settingimages/appearance.svg')
  ];
  List firsthreetext = ['Saved messages', 'Recent calls', 'Stickers'];
  List secondfourtext = [
    'Notifications and Sounds',
    'Privacy and Security',
    'Data and Storage',
    'Appearance'
  ];

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
