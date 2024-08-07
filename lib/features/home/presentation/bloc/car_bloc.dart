import 'package:bloc/bloc.dart';
import 'package:car_rental_app/features/home/domain/usecases/get_cars.dart';

import 'car_events.dart';
import 'car_states.dart';

class CarBloc extends Bloc<CarEvents, CarStates> {
  final GetCars getCar;

  CarBloc(this.getCar) : super(CarLoading()) {
    on<LoadCars>((event, emit) async {
      emit(CarLoading());
      try {
        final cars = await getCar.call();
        emit(CarLoaded(cars));
      } catch (e) {
        emit(CarError(e.toString()));
      }
    });
  }
}
