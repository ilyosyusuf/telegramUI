import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:telegram/screens/mainview/state/main_state.dart';
import 'package:flutter/services.dart' as bundle;

class MainCubit extends Cubit<MainState> {
  MainCubit() : super(CallState());

  List usersList = [];

  Future getUsers()async{
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
}
