import 'package:get/get.dart';
import 'package:chorki_video_player/src/module/splash/controllers/splash_controller.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashController>(() {
      return SplashController();
    }, fenix: true);
  }
}
