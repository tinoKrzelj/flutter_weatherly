import 'package:flutter/material.dart';
import 'package:weatherly_flutter/src/router.dart';

void main() {
  runApp(const WeatherlyApp());
}

class WeatherlyApp extends StatelessWidget {
  const WeatherlyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(routerConfig: AppRouter().defaultRouteConfig());
  }
}
