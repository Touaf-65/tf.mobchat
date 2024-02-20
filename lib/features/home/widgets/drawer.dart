import 'package:flutter/material.dart';
import 'package:mobilechat/utils/constants/text_strings.dart';

class MDrawer extends StatelessWidget {
  const MDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              DrawerHeader(
                child: Center(
                    child: Icon(
                      Icons.message,
                      color: Theme.of(context).colorScheme.primary,
                      size: 55,),
                ),
              ),

              Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: ListTile(
                    title: const Text(AppTexts.home),
                    leading: const Icon(Icons.home),
                    onTap: () {},
                  ),
              ),

              Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: ListTile(
                    title: const Text(AppTexts.settings),
                    leading: const Icon(Icons.settings),
                    onTap: () {},
                  ),
              ),

            ],
          ),

          Padding(
            padding: const EdgeInsets.only(left: 25.0, bottom: 25.0),
            child: ListTile(
              title: const Text(AppTexts.logout),
              leading: const Icon(Icons.logout),
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}
