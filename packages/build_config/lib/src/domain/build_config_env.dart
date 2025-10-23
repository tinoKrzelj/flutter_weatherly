enum BuildConfigEnvironment {
  staging('staging'),
  production('prod');

  final String value;
  const BuildConfigEnvironment(this.value);

  static BuildConfigEnvironment getEnvironmentFromString({
    required String stringEnv,
  }) {
    if (stringEnv == BuildConfigEnvironment.production.value) {
      return BuildConfigEnvironment.production;
    }
    return BuildConfigEnvironment.staging;
  }
}
