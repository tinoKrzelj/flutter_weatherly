import 'package:forecast_current_location/src/data/data_sources/forecast_current_location_data_source.dart';
import 'package:forecast_current_location/src/data/data_sources/remote/forecast_current_location_remote_data_source.dart';
import 'package:forecast_current_location/src/domain/entity/forecast_city.dart';

import 'package:forecast_current_location/src/domain/entity/forecast_weather_info.dart';

import '../domain/forecast_current_location_repository.dart';

class ForecastCurrentLocationRepositoryImpl
    implements ForecastCurrentLocationRepository {
  final ForecastCurrentLocationDataSource _remoteDataSource;

  ForecastCurrentLocationRepositoryImpl({
    ForecastCurrentLocationDataSource? remoteDataSource,
  }) : _remoteDataSource =
           remoteDataSource ?? ForecastCurrentLocationRemoteDataSource();

  @override
  Future<ForecastWeatherInfo> getCurrentForecastForCity({
    required ForecastCity city,
  }) async {
    return await _remoteDataSource.getCurrentForecastForCity(city: city);
  }
}
