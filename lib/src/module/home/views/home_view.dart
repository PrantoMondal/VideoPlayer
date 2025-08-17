import 'package:chorki_video_player/src/module/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final homeController = Get.find<HomeController>();
    return Scaffold(
      body: Obx(
        () => Center(
          child: homeController.isInitialized.value
              ? AspectRatio(
                  aspectRatio: homeController.controller.value.aspectRatio,
                  child: VideoPlayer(homeController.controller),
                )
              : Container(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          homeController.isPlaying.value = !homeController.isPlaying.value;
          homeController.isPlaying.value ? homeController.controller.pause() : homeController.controller.play();
        },
        child: Obx(() {
          return Icon(homeController.isPlaying.value ? Icons.play_arrow : Icons.pause);
        }),
      ),
    );
  }
}
