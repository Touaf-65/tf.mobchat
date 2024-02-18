import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/text_strings.dart';

class SignUpForm extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _pwController = TextEditingController();
  final TextEditingController _confirmPwController = TextEditingController();

  final void Function()? onTap;
  SignUpForm({super.key, required this.onTap});

  void signup() {}

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
              onTap: signup,
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  borderRadius: BorderRadius.circular(15)
                ),
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 0),
                margin: EdgeInsets.symmetric(horizontal: 80),
                child: Center(
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
