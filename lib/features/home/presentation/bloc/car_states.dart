import '../../data/models/car_model.dart';

sealed class CarStates {}

final class CarLoading extends CarStates {}

final class CarLoaded extends CarStates {
  final List<CarModel> cars;

  CarLoaded(this.cars);
}

final class CarError extends CarStates {
  final String error;

  CarError(this.error);
}
