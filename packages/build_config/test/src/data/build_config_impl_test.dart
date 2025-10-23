import 'package:build_config/build_config.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('BuildConfigImpl', () {
    late BuildConfig buildConfig;

    setUp(() {
      buildConfig = BuildConfigFactory.create();
    });

    test('getBuildConfigEnvironment should return staging by default', () {
      final environment = buildConfig.getBuildConfigEnvironment();
      expect(environment, BuildConfigEnvironment.staging);
    });
  });
}
