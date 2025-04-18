// ignore_for_file: constant_identifier_names

part of 'app_pages.dart';

abstract class Routes {
  Routes._();
  static const HOME_USER = _Paths.HOME;
  static const LOGIN = _Paths.LOGIN;
  static const SPLASH = _Paths.SPLASH;
  static const SPLASH_INIT = _Paths.SPLASHINIT;
  static const NAVIGATION = _Paths.NAVIGATION;
}

abstract class _Paths {
  _Paths._();
  static const SPLASHINIT = '/splashInit';
  static const SPLASH = '/splash';
  static const LOGIN = '/login';
  static const NAVIGATION = '/navigation';
  static const HOME = '/homeUser';
}
