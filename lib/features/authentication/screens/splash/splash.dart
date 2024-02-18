import 'package:flutter/material.dart';
import 'package:mobilechat/features/authentication/screens/login/login.dart';
import 'package:mobilechat/features/authentication/screens/login_or_register/login_or_register.dart';
import 'package:mobilechat/features/authentication/screens/signup/signup.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  void _navigateToHome() async {
    await Future.delayed(const Duration(milliseconds: 1500), () {});
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => LoginOrRegister()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Icon(Icons.chat, size: 100,)
          // child: Container(
          //     color: Colors.orange,),
          ),
    );
  }
}
