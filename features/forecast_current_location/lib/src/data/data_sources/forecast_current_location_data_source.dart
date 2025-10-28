import '../../domain/entity/forecast_city.dart';
import '../../domain/entity/forecast_weather_info.dart';

abstract class ForecastCurrentLocationDataSource {
  Future<ForecastWeatherInfo> getCurrentForecastForCity({
    required ForecastCity city,
  });
}