import 'package:build_config/build_config.dart';
import 'package:flutter/material.dart';

class ForecastCurrentLocationScreen extends StatefulWidget {
  const ForecastCurrentLocationScreen({super.key});

  @override
  State<ForecastCurrentLocationScreen> createState() =>
      _ForecastCurrentLocationScreenPageState();
}

class _ForecastCurrentLocationScreenPageState
    extends State<ForecastCurrentLocationScreen> {
  @override
  Widget build(BuildContext context) {
    BuildConfig buildConfig = BuildConfigFactory.create();

    return Scaffold(
      appBar: AppBar(title: Text('Test')),
      body: Center(
        child: Row(
          children: [
            FloatingActionButton(
              onPressed: () {
                print(
                  'Build Config = ${buildConfig.getBuildConfigEnvironment()}',
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
