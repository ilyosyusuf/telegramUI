import 'package:flutter/material.dart';
import 'package:telegram/screens/mainview/view/main_view.dart';
import 'package:telegram/screens/pages/authentication/auth_view.dart';
import 'package:telegram/screens/pages/chats/pages/chat_view.dart';

class MyRoute {
  static final MyRoute _instance = MyRoute._init();
  static MyRoute get instance => _instance;
  MyRoute._init();

  Route? onGenerateRoute(RouteSettings settings) {
    var args = settings.arguments;
    switch (settings.name) {
      case '/mainview':
        return _pages(MainView());
      case '/chats':
        return _pages(ChatView());
      case '/authview':
        return _pages(AuthView());
    }
  }

  _pages(Widget page) {
    return MaterialPageRoute(builder: (context) => page);
  }
}
