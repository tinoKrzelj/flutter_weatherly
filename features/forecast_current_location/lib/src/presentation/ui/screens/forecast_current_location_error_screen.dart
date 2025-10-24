import 'package:flutter/material.dart';

class ForecastCurrentLocationErrorScreen extends StatelessWidget {
  String message;
  ForecastCurrentLocationErrorScreen({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text(message)));
  }
}
