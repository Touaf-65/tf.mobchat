import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mobilechat/utils/services/auth_service.dart';

import '../../../../../utils/constants/text_strings.dart';

class SignUpForm extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _pwController = TextEditingController();
  final TextEditingController _confirmPwController = TextEditingController();

  final void Function()? onTap;
  SignUpForm({super.key, required this.onTap});

  void signup(BuildContext context) {
    final _auth = AuthService();
    if (_pwController.text == _confirmPwController.text) {
      try {
        _auth.signUpWithEmailPassword(_emailController.text, _pwController.text);
      } catch (e) {
        showDialog(
            context: context,
            builder: (context) => AlertDialog(
            title: Text(e.toString()),
        ),
        );
      }
    }
    else {
      showDialog(
          context: context,
          builder: (context) => const AlertDialog(
          title: Text(AppTexts.pasNotMatch),
          ),
      );
    }
  }

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
              height: 16,
            ),

            /// Confirm Password
              TextFormField(
                controller: _confirmPwController,
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
                  labelText: AppTexts.cfpassword,
                  hintText: AppTexts.cfpasswordHint,
                  suffixIcon: const Icon(Iconsax.eye_slash),
                ),
              ),

            const SizedBox(
              height: 32,
            ),

            GestureDetector(
              onTap: () => signup(context),
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  borderRadius: BorderRadius.circular(15)
                ),
                padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 0),
                margin: const EdgeInsets.symmetric(horizontal: 80),
                child: const Center(
                  child: Text(AppTexts.register),
                ),
              ),
            ),

            const SizedBox(
              height: 32,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Already have an account? ',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary
                ),),
                GestureDetector(
                  onTap: onTap,
                  child: Text('Login',
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
