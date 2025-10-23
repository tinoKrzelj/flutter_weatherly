import 'package:forecast_current_location/forecast_current_location.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  GoRouter defaultRouteConfig() {
    return GoRouter(
      initialLocation: ForecastCurrentLocationRoute().path,
      routes: <RouteBase>[ForecastCurrentLocationRoute().route],
    );
  }
}