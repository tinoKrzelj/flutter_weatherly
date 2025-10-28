import 'package:forecast_current_location/src/data/forecast_current_location_repository_impl.dart';
import 'package:forecast_current_location/src/domain/forecast_current_location_repository.dart';

class ForecastCurrentLocationFactory {
  static ForecastCurrentLocationRepository create() {
    return ForecastCurrentLocationRepositoryImpl();
  }
}
