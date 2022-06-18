import 'package:flutter/material.dart';
import 'package:telegram/config/init/navigation/navigator.dart';
import 'package:telegram/config/routes/page_routes.dart';
import 'package:telegram/screens/mainview/cubit/main_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await MainCubit.getUsers();
  runApp(const MyApp()
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Telegram',
      theme: ThemeData(),
      navigatorKey: NavigationService.instance.navigatorKey,
      initialRoute: '/mainview',
      onGenerateRoute: MyRoute.instance.onGenerateRoute,
    );
  }
}
