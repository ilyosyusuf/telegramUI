import 'package:flutter/material.dart';
import 'package:telegram/config/init/navigation/navigator.dart';
import 'package:telegram/config/routes/page_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      navigatorKey: NavigationService.instance.navigatorKey,
      initialRoute: '/chats',
      onGenerateRoute: MyRoute.instance.onGenerateRoute,
    );
  }
}
