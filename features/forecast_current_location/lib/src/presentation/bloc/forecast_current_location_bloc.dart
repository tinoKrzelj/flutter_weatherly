import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forecast_current_location/src/presentation/bloc/forecast_current_location_state.dart';

import 'forecast_current_location_events.dart';

abstract class ForecastCurrentLocationBloc
    extends Bloc<ForecastCurrentLocationEvent, ForecastCurrentLocationState> {
  ForecastCurrentLocationBloc(super.initialState);
}

class ForecastCurrentLocationBlocImpl extends ForecastCurrentLocationBloc {
  ForecastCurrentLocationBlocImpl()
    : super(ForecastCurrentLocationInitialState()) {
    on<ForecastCurrentLocationLoadedEvent>(
      _handleForecastCurrentLocationLoadedEvent,
    );
    on<ForecastCurrentLocationButtonPressedEvent>(
      _handleForecastCurrentLocationButtonPressedEvent,
    );
  }

  FutureOr<void> _handleForecastCurrentInitial(
    ForecastCurrentLocationLoadedEvent event,
    Emitter<ForecastCurrentLocationState> emit,
  ) {
    emit(ForecastCurrentLocationLoadedState());
  }

  FutureOr<void> _handleForecastCurrentLocationLoadedEvent(
    ForecastCurrentLocationLoadedEvent event,
    Emitter<ForecastCurrentLocationState> emit,
  ) {
    print('Tino loaded');
  }

  FutureOr<void> _handleForecastCurrentLocationButtonPressedEvent(
    ForecastCurrentLocationButtonPressedEvent event,
    Emitter<ForecastCurrentLocationState> emit,
  ) {
    emit(ForecastCurrentLocationErrorState(message: 'Ovo ne radi jbg'));
  }
}
