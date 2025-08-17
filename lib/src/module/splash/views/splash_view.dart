import 'package:chorki_video_player/src/core/routes/app_routes.dart';
import 'package:chorki_video_player/src/module/splash/controllers/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    // Future.delayed(const Duration(seconds: 2), () => Get.offNamed(Routes.HOME));
    final controller = Get.find<SplashController>();

    return Scaffold(
      backgroundColor: Colors.black,
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.video_library_outlined, color: Colors.white, size: 48),
            Text(
              "Video Player",
              style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
