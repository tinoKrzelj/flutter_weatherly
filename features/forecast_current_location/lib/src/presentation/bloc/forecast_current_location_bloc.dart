import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forecast_current_location/src/domain/entity/forecast_city.dart';
import 'package:forecast_current_location/src/factory/flutter_current_location_factory.dart';
import 'package:forecast_current_location/src/presentation/bloc/forecast_current_location_state.dart';

import '../../domain/repository/forecast_current_location_repository.dart';
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

  void _handleForecastCurrentLocationLoadedEvent(
    ForecastCurrentLocationLoadedEvent event,
    Emitter<ForecastCurrentLocationState> emit,
  ) {}

  Future<void> _handleForecastCurrentLocationButtonPressedEvent(
    ForecastCurrentLocationButtonPressedEvent event,
    Emitter<ForecastCurrentLocationState> emit,
  ) async {
    final ForecastCurrentLocationRepository repo =
        ForecastCurrentLocationFactory.createRepository();
    final value = await repo.getCurrentForecastForCity(city: ForecastCity());
    // emit(ForecastCurrentLocationLoadedState());
    emit(
      ForecastCurrentLocationErrorState(
        message: 'Temp is ${value.temperature}',
      ),
    );
  }
}
