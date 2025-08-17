import 'package:chorki_video_player/src/module/home/controllers/home_controller.dart';
import 'package:get/get.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() {
      return HomeController();
    }, fenix: true);
  }
}
