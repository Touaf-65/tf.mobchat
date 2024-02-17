import 'package:flutter/material.dart';
import 'package:mobilechat/features/authentication/screens/login/widgets/login_form.dart';
import 'package:mobilechat/features/authentication/screens/login/widgets/login_header.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LoginHeader(),
            const SizedBox(height: 20,),
            LoginForm()
          ],
        ),
      ),
    );
  }
}
