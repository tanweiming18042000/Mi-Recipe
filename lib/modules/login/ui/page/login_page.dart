import 'package:flutter/material.dart';

import '../../../../constants/flag_enum.dart';
import '../../../../locales/intl.dart';
import '../../../../navigation/route_name.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  void _goHome(BuildContext context) {
    Intl.setValue('login.flag', FlagEnum.TRUE.value);
    Navigator.pushReplacementNamed(context, RouteName.home);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        _goHome(context);
        return false;
      },
      child: Scaffold(
        appBar: AppBar(title: const Text('Login')),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.lock_outline, size: 64, color: Colors.deepPurple),
              const SizedBox(height: 16),
              const Text('This is the login screen.', style: TextStyle(fontSize: 16)),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () => _goHome(context),
                child: const Text('Skip'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
