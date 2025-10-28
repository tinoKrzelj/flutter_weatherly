import 'package:forecast_current_location/src/domain/entity/forecast_weather_info.dart';

import '../entity/forecast_city.dart';

abstract class ForecastCurrentLocationRepository {
  Future<ForecastWeatherInfo> getCurrentForecastForCity({
    required ForecastCity city,
  });
}
