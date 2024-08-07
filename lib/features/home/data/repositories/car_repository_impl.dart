import 'package:car_rental_app/features/home/data/datasources/firebase_car_data_source.dart';
import 'package:car_rental_app/features/home/data/models/car_model.dart';

import '../../domain/repositories/car_repository.dart';

class CarRepositoryImpl implements CarRepository {
  FirebaseCarDataSource firebaseCarDataSource;

  CarRepositoryImpl({required this.firebaseCarDataSource});

  @override
  Future<List<CarModel>> fetchCars() {
    return firebaseCarDataSource.getCars();
  }
}
