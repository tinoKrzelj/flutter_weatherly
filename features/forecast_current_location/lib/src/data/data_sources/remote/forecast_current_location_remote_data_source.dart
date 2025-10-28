import 'package:forecast_current_location/src/domain/entity/forecast_city.dart';

import 'package:forecast_current_location/src/domain/entity/forecast_weather_info.dart';

import '../forecast_current_location_data_source.dart';

class ForecastCurrentLocationRemoteDataSource
    implements ForecastCurrentLocationDataSource {
  @override
  Future<ForecastWeatherInfo> getCurrentForecastForCity({
    required ForecastCity city,
  }) async {
    return ForecastWeatherInfo(
      temperature: 1.0,
      minTemperature: 1.0,
      maxTemperature: 1.0,
      feelsLikeTemperature: 1.0,
      pressure: 1.0,
      humidity: 1.0,
    );
  }
}
