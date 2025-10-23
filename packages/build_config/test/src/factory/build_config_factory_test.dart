import 'package:build_config/build_config.dart';
import 'package:build_config/src/data/build_config_impl.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('BuildConfigFactory', () {
    test('should create and return BuildConfigImpl instance', () {
      final buildConfig = BuildConfigFactory.create();
      expect(buildConfig, isA<BuildConfig>());
      expect(buildConfig, isA<BuildConfigImpl>());
    });
  });
}