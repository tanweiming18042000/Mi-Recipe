import 'package:flutter/material.dart';

import '../constants/flag_enum.dart';
import '../locales/intl.dart';
import '../modules/login/ui/page/login_page.dart';
import '../navigation/route_name.dart';

/// A small security gate used by routing.
///
/// If the current locale flag ("login.flag") is set to [FlagEnum.false], any
/// route other than the login route will immediately resolve to [LoginPage].
Route<dynamic> SecurityCheck(RouteSettings settings, WidgetBuilder builder) {
  final loginFlag = Intl.text('login.flag');

  if (loginFlag == FlagEnum.FALSE.value && settings.name != RouteName.login) {
    return MaterialPageRoute(
      builder: (_) => const LoginPage(),
      settings: settings,
    );
  }

  return MaterialPageRoute(builder: builder, settings: settings);
}
