import 'package:flutter/material.dart';

import 'widgets/signup_form.dart';
import 'widgets/signup_header.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SignUpHeader(),
            const SizedBox(height: 20,),
            SignUpForm()
          ],
        ),
      ),
    );
  }
}
