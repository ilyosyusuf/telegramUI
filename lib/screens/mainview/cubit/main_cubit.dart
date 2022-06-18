import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:telegram/screens/mainview/state/main_state.dart';
import 'package:flutter/services.dart' as bundle;

class MainCubit extends Cubit<MainState> {
  MainCubit() : super(ChatState());

  List usersList = [];

  Future getUsers()async{
        final data = await bundle.rootBundle.loadString('lib/core/mock/users.json');
    usersList = jsonDecode(data) as List;
    // usersList = lst;
    print(usersList);
    emit(ChatState());
    return usersList;
  }
}
