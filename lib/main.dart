import 'package:flutter/material.dart';

import 'navigation/route_manager.dart';
import 'navigation/route_name.dart';
import 'locales/intl.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Load default locale strings before running the app.
  await Intl.load(const Locale('en'));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      initialRoute: RouteName.home,
      onGenerateRoute: RouteManager.generateRoute,
    );
  }
}
