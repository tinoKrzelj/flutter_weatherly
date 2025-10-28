import 'package:forecast_current_location/src/data/repository/forecast_current_location_repository_impl.dart';
import 'package:forecast_current_location/src/domain/repository/forecast_current_location_repository.dart';

class ForecastCurrentLocationFactory {
  static ForecastCurrentLocationRepository createRepository() {
    return ForecastCurrentLocationRepositoryImpl();
  }
}
