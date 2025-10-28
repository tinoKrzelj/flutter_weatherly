class ForecastWeatherInfo {
  double temperature;
  double minTemperature;
  double maxTemperature;
  double feelsLikeTemperature;
  double pressure;
  double humidity;

  ForecastWeatherInfo({
    required this.temperature,
    required this.minTemperature,
    required this.maxTemperature,
    required this.feelsLikeTemperature,
    required this.pressure,
    required this.humidity,
  });

  // ForecastWeatherInfo({required this.temperature});
}
