import 'package:flutter/material.dart';
import 'package:mobilechat/features/authentication/screens/login/login.dart';
import 'package:mobilechat/features/authentication/screens/signup/signup.dart';

class LoginOrRegister extends StatefulWidget {
  const LoginOrRegister({super.key});

  @override
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {
  bool showLogin = true;

  void togglePages() {
    setState(() {
      showLogin = !showLogin;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLogin) {
      return Login();
    } else {
      return SignUp();
    }
  }
}
