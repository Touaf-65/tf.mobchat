import 'package:flutter/material.dart';
import 'package:mobilechat/utils/constants/text_strings.dart';
import 'package:mobilechat/utils/services/auth_service.dart';

import 'widgets/drawer.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  void logout() {
    final authService = AuthService();
    authService.logOut();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(AppTexts.appTitle),
        actions: [
          IconButton(onPressed: logout, icon: Icon(Icons.logout))
        ],
      ),
      drawer: MDrawer(),
      body: Text('welcome!', style: TextStyle(fontSize: 70),),
    );
  }
}
