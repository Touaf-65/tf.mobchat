import 'package:flutter/material.dart';
import 'package:mobilechat/utils/services/auth_service.dart';

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
        title: Text('MobileChat'),
        actions: [
          IconButton(onPressed: logout, icon: Icon(Icons.logout))
        ],
      ),
      body: Text('welcome!', style: TextStyle(fontSize: 70),),
    );
  }
}
