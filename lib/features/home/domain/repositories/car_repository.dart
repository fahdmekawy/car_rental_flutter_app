import 'package:car_rental_app/features/home/data/models/car_model.dart';

abstract class CarRepository {
  Future<List<CarModel>> fetchCars();
}
