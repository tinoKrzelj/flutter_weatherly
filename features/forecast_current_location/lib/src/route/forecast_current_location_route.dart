import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../forecast_current_location.dart';

class ForecastCurrentLocationRoute {
  String get path => '/forecastCurrentLocationRoute';

  RouteBase get route => GoRoute(
    path: path,
    builder: (BuildContext context, GoRouterState state) {
      return const ForecastCurrentLocationScreen();
    },
  );
}
