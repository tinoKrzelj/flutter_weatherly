import 'package:build_config/build_config.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
