import 'package:get/get.dart';
import 'package:mountrip/app/data/repositories/authentication_repository.dart';
import 'package:mountrip/app/features/home/controllers/home_controller.dart';
import 'package:mountrip/app/features/navigation_bar/controllers/navigation_bar_controller.dart';

class NavigationBarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AuthenticationRepository());
    Get.lazyPut(() => NavigationBarController());
    Get.lazyPut(() => HomeController());
  }
}
