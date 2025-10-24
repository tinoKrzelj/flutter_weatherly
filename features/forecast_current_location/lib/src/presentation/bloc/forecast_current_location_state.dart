abstract class ForecastCurrentLocationState {}

class ForecastCurrentLocationInitialState
    implements ForecastCurrentLocationState {}

class ForecastCurrentLocationLoadedState
    implements ForecastCurrentLocationState {}

class ForecastCurrentLocationErrorState
    implements ForecastCurrentLocationState {
  final String message;
  ForecastCurrentLocationErrorState({required this.message});
}
