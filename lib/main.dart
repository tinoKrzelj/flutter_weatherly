import 'package:flutter/material.dart';
import 'package:forecast_current_location/forecast_current_location.dart';

void main() {
  runApp(const WeatherlyApp());
}

class WeatherlyApp extends StatelessWidget {
  const WeatherlyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: ForecastCurrentLocationScreen());
  }
}
