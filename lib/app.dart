import 'package:flutter/material.dart';
// import 'package:mobilechat/features/authentication/screens/login/login.dart';
import 'package:mobilechat/utils/theme/theme.dart';

import 'features/authentication/screens/splash/splash.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mobile Chat',
      theme: AppTheme.lightTheme,
      home:  Splash(),
    );
  }
}

