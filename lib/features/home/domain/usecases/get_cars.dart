import 'package:car_rental_app/features/home/domain/repositories/car_repository.dart';

import '../../data/models/car_model.dart';

class GetCars {
  final CarRepository carRepository;

  GetCars({required this.carRepository});

  Future<List<CarModel>> call() async => await carRepository.fetchCars();
}
