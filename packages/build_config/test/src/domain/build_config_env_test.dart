import 'package:build_config/src/domain/build_config_env.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('BuildConfigEnvironment', () {
    test('should have correct values for each environment', () {
      expect(BuildConfigEnvironment.staging.value, 'staging');
      expect(BuildConfigEnvironment.production.value, 'prod');
    });

    group('getEnvironmentFromString', () {
      test('should return production when string is prod', () {
        const stringEnv = 'prod';
        final env = BuildConfigEnvironment.getEnvironmentFromString(
          stringEnv: stringEnv,
        );
        expect(env, BuildConfigEnvironment.production);
      });

      test('should return staging when string is not prod', () {
        const stringEnv = 'staging';
        final env = BuildConfigEnvironment.getEnvironmentFromString(
          stringEnv: stringEnv,
        );
        expect(env, BuildConfigEnvironment.staging);
      });

      test('should return staging for any other string', () {
        const stringEnv = 'development';
        final env = BuildConfigEnvironment.getEnvironmentFromString(
          stringEnv: stringEnv,
        );
        expect(env, BuildConfigEnvironment.staging);
      });
    });
  });
}
