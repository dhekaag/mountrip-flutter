import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mountrip/app/modules/login/controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login  View'),
      ),
      body: Center(
        child: Text('Login View is working'),
      ),
    );
  }
}
