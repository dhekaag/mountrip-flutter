import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mountrip/app/features/home/controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home View'),
        actions: [
          Obx(
            () => IconButton(
              icon: const Icon(Icons.logout),
              onPressed: controller.isLoading.value ? null : controller.logout,
            ),
          ),
        ],
      ),
      body: Center(
        child: Text(
          'Home View is working',
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      ),
    );
  }
}
