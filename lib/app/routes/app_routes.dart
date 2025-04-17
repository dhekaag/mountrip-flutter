// ignore_for_file: constant_identifier_names

part of 'app_pages.dart';

abstract class Routes {
  Routes._();
  static const HOME_USER = _Paths.HOME_USER;
  static const DASHBOARD_ADMIN = _Paths.DASHBOARD_ADMIN;
  static const SPLASH = _Paths.SPLASH;
  static const LOGIN = _Paths.LOGIN;
}

abstract class _Paths {
  _Paths._();
  static const HOME_USER = '/homeUser';
  static const DASHBOARD_ADMIN = '/dashboardAdmin';
  static const SPLASH = '/splash';
  static const LOGIN = '/login';
}
