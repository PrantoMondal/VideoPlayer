import 'package:chorki_video_player/src/core/config/env_config.dart';

class BuildConfig {
  late final EnvConfig envConfig;

  static final BuildConfig singleton = BuildConfig._internal();
  BuildConfig._internal();

  factory BuildConfig.instantiate({required EnvConfig config}) {
    singleton.envConfig = config;

    return singleton;
  }
}
