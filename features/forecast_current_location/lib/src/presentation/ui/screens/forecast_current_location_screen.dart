import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forecast_current_location/src/presentation/ui/screens/forecast_current_location_error_screen.dart';

import '../../bloc/forecast_current_location_bloc.dart';
import '../../bloc/forecast_current_location_events.dart';
import '../../bloc/forecast_current_location_state.dart';

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
    return BlocProvider(
      create: (_) => ForecastCurrentLocationBlocImpl(),
      child:
          BlocBuilder<
            ForecastCurrentLocationBlocImpl,
            ForecastCurrentLocationState
          >(builder: (context, state) => _onStateChangeBuilder(context, state)),
    );
  }

  Widget _onStateChangeBuilder(
    BuildContext context,
    ForecastCurrentLocationState state,
  ) {
    if (state is ForecastCurrentLocationErrorState) {
      return ForecastCurrentLocationErrorScreen(message: state.message,);
    } else {
      return Scaffold(
        appBar: AppBar(title: Text('Test')),
        body: Center(
          child: Row(
            children: [
              FloatingActionButton(
                onPressed: () {
                  _getBuildConfigurationButtonPressed(context);
                },
              ),
            ],
          ),
        ),
      );
    }
  }

  void _getBuildConfigurationButtonPressed(BuildContext context) {
    final bloc = context.read<ForecastCurrentLocationBlocImpl>();
    bloc.add(ForecastCurrentLocationButtonPressedEvent());
  }
}
