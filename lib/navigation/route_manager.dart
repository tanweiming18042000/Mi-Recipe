import 'package:flutter/material.dart';

import '../security/security_check.dart';
import '../modules/home/ui/page/home_page.dart';
import '../modules/login/ui/page/login_page.dart';
import 'route_name.dart';

/// A simple centralized route generator for use with `MaterialApp.onGenerateRoute`.
///
/// Example usage:
///
/// ```dart
/// MaterialApp(
///   onGenerateRoute: RouteManager.generateRoute,
/// );
/// ```
class RouteManager {
  RouteManager._();

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.login:
        return SecurityCheck(
          settings,
          (_) => const LoginPage(),
        );

      case RouteName.home:
        return SecurityCheck(
          settings,
          (_) => const HomePage(),
        );

      default:
        return MaterialPageRoute(
          builder: (_) => const _RouteNotFoundPage(),
          settings: settings,
        );
    }
  }
}


class _PlaceholderPage extends StatelessWidget {
  final String title;

  const _PlaceholderPage(this.title, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(child: Text('Page: $title')),
    );
  }
}

class _RouteNotFoundPage extends StatelessWidget {
  const _RouteNotFoundPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Route not found')),
      body: const Center(child: Text('No route defined for this path')),
    );
  }
}
