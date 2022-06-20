import 'package:flutter/material.dart';
import 'package:telegram/screens/mainview/view/main_view.dart';
import 'package:telegram/screens/pages/appearance/appearance_view.dart';
import 'package:telegram/screens/pages/authentication/auth_view.dart';
import 'package:telegram/screens/pages/chatinside/pages/chat_inside_widget.dart';
import 'package:telegram/screens/pages/chats/pages/chat_view.dart';
import 'package:telegram/screens/pages/datastorage/data_and_storage_view.dart';
import 'package:telegram/screens/pages/notifications/notifications_view.dart';
import 'package:telegram/screens/pages/privacy/privacy_and_security_view.dart';

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
      case '/appearanceview':
        return _pages(AppearanceView());
      case '/notificationview':
        return _pages(NotificationView());
      case '/privacy':
        return _pages(PrivacyAndSecurityView());
      case '/datastorage':
        return _pages(DataAndStorage());
      case '/chatinside':
        return _pages(ChatInsideView(data: args as List));
    }
  }

  _pages(Widget page) {
    return MaterialPageRoute(builder: (context) => page);
  }
}
