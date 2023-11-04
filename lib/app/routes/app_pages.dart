import 'package:get/get.dart';
import 'package:hackathon4/app/modules/main/bindings/main_binding.dart';
import 'package:hackathon4/app/modules/main/view/main_view.dart';
import 'package:hackathon4/app/modules/profile/bindings/profile_binding.dart';
import 'package:hackathon4/app/modules/profile/view/profile_view.dart';
import '../modules/auth/view/auth_view.dart';
import '../modules/auth/bindings/auth_binding.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/view/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/view/login_view.dart';
import '../modules/alerts/bindings/alert_binding.dart';
import '../modules/alerts/view/alert_view.dart';

// ignore_for_file: constant_identifier_names

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.AUTH;

  static final routes = [
    GetPage(
      name: _Paths.AUTH,
      page: () => const AuthView(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.MAIN,
      page: () => const MainView(),
      binding: MainBinding(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.ALERTS,
      page: () => const AlertsView(),
      binding: AlertBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => const ProfileView(),
      binding: ProfileBinding(),
    ),
  ];
}
