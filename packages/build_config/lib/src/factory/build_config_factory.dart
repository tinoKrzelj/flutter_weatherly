import 'package:build_config/src/build_config.dart';
import 'package:build_config/src/data/build_config_impl.dart';

class BuildConfigFactory {
  static BuildConfig create() {
    return BuildConfigImpl();
  }
}