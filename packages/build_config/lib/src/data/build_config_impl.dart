import 'package:build_config/src/build_config.dart';
import 'package:build_config/src/domain/build_config_env.dart';

class BuildConfigImpl implements BuildConfig {
  @override
  BuildConfigEnvironment getBuildConfigEnvironment() {
    const envString = String.fromEnvironment(
      'BUILDCONFIG',
      defaultValue: 'staging',
    );
    return BuildConfigEnvironment.getEnvironmentFromString(
      stringEnv: envString,
    );
  }
}
