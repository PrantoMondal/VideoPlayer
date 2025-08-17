import 'package:chorki_video_player/src/module/home/bindings/home_binding.dart';
import 'package:chorki_video_player/src/module/home/views/home_view.dart';
import 'package:chorki_video_player/src/module/splash/bindings/splash_binding.dart';
import 'package:chorki_video_player/src/module/splash/views/splash_view.dart';
import 'package:get/get.dart';

import 'app_routes.dart';

class AppPages {
  AppPages._();

  static const InitialRoute = Routes.SPLASH;
  static final List<GetPage> pages = [
    GetPage(name: Routes.SPLASH, binding: SplashBinding(), page: () => SplashView()),
    GetPage(name: Routes.HOME, binding: HomeBinding(), page: () => HomeView()),
  ];
}
