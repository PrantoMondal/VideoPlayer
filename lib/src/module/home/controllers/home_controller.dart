import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

class HomeController extends GetxController {
  late VideoPlayerController controller;

  RxBool isPlaying = false.obs;
  RxBool isInitialized = false.obs;

  @override
  void onInit() {
    super.onInit();
    controller =
        VideoPlayerController.networkUrl(
            Uri.parse(
              'https://demo.unified-streaming.com/k8s/features/stable/video/tears-of-steel/tears-of-steel.ism/.m3u8',
            ),
          )
          ..initialize().then((_) {
            isInitialized.value = true;
            controller.pause();
          });
  }
}
