import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/text_strings.dart';

class LoginForm extends StatelessWidget {

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _pwController = TextEditingController();

  final void Function()? onTap;
  LoginForm({super.key, required this.onTap});

  void login() {}
  @override

  Widget build(BuildContext context) {
    return Form(
        child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 32,
              horizontal: 25
            ),
          child: Column(
            children: [
            TextFormField(
              controller: _emailController,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(
                    color: Theme.of(context).colorScheme.tertiary
                  )
                ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      color: Theme.of(context).colorScheme.primary
                    ),
                  ),
                  fillColor: Theme.of(context).colorScheme.secondary,
                  filled: true,
                  prefixIcon: const Icon(Iconsax.direct_right),
                  labelText: AppTexts.email,
                  hintText: AppTexts.emailHint,
              ),
            ),

            const SizedBox(height: 16),

            /// Password
              TextFormField(
                controller: _pwController,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                          color: Theme.of(context).colorScheme.tertiary
                      )
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                        color: Theme.of(context).colorScheme.primary
                    ),
                  ),
                  fillColor: Theme.of(context).colorScheme.secondary,
                  filled: true,
                  prefixIcon: const Icon(Iconsax.password_check),
                  labelText: AppTexts.password,
                  hintText: AppTexts.passwordHint,
                  suffixIcon: const Icon(Iconsax.eye_slash),
                ),
              ),

            const SizedBox(
              height: 32,
            ),

            GestureDetector(
              onTap: login,
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  borderRadius: BorderRadius.circular(15)
                ),
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 0),
                margin: EdgeInsets.symmetric(horizontal: 80),
                child: Center(
                  child: Text(AppTexts.login),
                ),
              ),
            ),

            const SizedBox(
              height: 32,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Not a member? ',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary
                ),),
                GestureDetector(
                  onTap: onTap,
                  child: Text('Register now',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.primary
                  ),
                  ),
                ),
              ],
            )
            ],
          ),
        ),
    );
  }
}
