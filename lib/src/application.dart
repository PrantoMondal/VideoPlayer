import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:chorki_video_player/src/core/config/build_config.dart';
import 'package:chorki_video_player/src/core/routes/app_routes.dart';

import 'core/bindings/initial_binding.dart';
import 'core/routes/app_pages.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    final config = BuildConfig.singleton.envConfig;
    return GetMaterialApp(
      title: config.appName,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple), useMaterial3: true),
      initialRoute: Routes.SPLASH,
      getPages: AppPages.pages,
      initialBinding: InitialBinding(),
    );
  }
}
