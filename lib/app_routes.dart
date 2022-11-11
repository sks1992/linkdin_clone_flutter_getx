import 'package:get/get.dart';
import 'package:linkdin_clone/ui/views/error_view.dart';
import 'package:linkdin_clone/ui/views/home_view.dart';
import 'package:linkdin_clone/ui/views/loading_view.dart';
import 'package:linkdin_clone/ui/views/login_view.dart';

class RouteNames {
  static String home = "/home";
  static String error = "/error";
  static String loading = "/loading";
  static String login = "/login";
}

class AppRoute {
  static final route = [
    GetPage(
      name: RouteNames.home,
      page: () => const HomeView(),
    ),
    GetPage(
      name: RouteNames.error,
      page: () => const ErrorView(),
    ),
    GetPage(
      name: RouteNames.loading,
      page: () => const LoadingView(),
    ),
    GetPage(
      name: RouteNames.login,
      page: () => const LoginView(),
    ),
  ];
}
