import 'package:weather_service/src/data/weather_service_impl.dart';
import 'package:weather_service/src/weather_service.dart';

class WeatherServiceFactory {
  static WeatherService create() {
    return WeatherServiceImpl();
  }
}
