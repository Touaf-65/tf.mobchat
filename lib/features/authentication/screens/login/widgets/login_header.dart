import 'package:flutter/material.dart';

import '../../../../../utils/constants/text_strings.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          Icons.message,
          size: 65,
          color: Theme.of(context).colorScheme.primary,
        ),

        const SizedBox(height: 40,),

        Text(
          AppTexts.welcome,
          style: TextStyle(
              color: Theme.of(context).colorScheme.primary,
              fontSize: 16
          ),
        ),

      ],
    );
  }
}
