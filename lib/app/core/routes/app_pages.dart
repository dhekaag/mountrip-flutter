import 'package:get/get.dart';
import 'package:mountrip/app/features/home/bindings/home_binding.dart';
import 'package:mountrip/app/features/home/views/home_view.dart';
import 'package:mountrip/app/features/login/bindings/login_binding.dart';
import 'package:mountrip/app/features/login/views/login_view.dart';
part 'app_routes.dart';

class AppPages {
  AppPages._();

  // ignore: constant_identifier_names
  static const INITIAL = Routes.LOGIN;

  static final routes = [
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    // GetPage(
    //   name: _Paths.NAVIGATION,
    //   page: () => const NavigationMenu(),
    //   binding: NavigationBinding(),
    // ),
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    // GetPage(
    //   name: _Paths.SPLASH,
    //   page: () => const SplashScreen(),
    //   binding: SplashBinding(),
    // ),
    // GetPage(
    //   name: _Paths.SPLASHINIT,
    //   page: () => const SplashInit(),
    // ),
  ];
}
