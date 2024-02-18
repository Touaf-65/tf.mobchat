import 'package:flutter/material.dart';

import 'widgets/signup_form.dart';
import 'widgets/signup_header.dart';

class SignUp extends StatelessWidget {
  final void Function()? onTap;
  const SignUp({super.key, required this.onTap});

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
            SignUpForm(
              onTap: onTap,
            )
          ],
        ),
      ),
    );
  }
}
