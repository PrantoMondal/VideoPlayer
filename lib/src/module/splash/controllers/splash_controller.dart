import 'package:chorki_video_player/src/core/routes/app_routes.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';

class SplashController extends GetxController {
  final Logger logger = Logger();
  @override
  void onInit() {
    logger.d("init called");
    Future.delayed(const Duration(seconds: 2), () => Get.offNamed(Routes.HOME));
    super.onInit();
  }
}
