import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get_it/get_it.dart';
import '../../features/home/data/datasources/firebase_car_data_source.dart';
import '../../features/home/data/repositories/car_repository_impl.dart';
import '../../features/home/domain/repositories/car_repository.dart';
import '../../features/home/domain/usecases/get_cars.dart';
import '../../features/home/presentation/bloc/car_bloc.dart';

GetIt getIt = GetIt.instance;

void initInjection() {
  try {
    getIt.registerLazySingleton<FirebaseFirestore>(
      () => FirebaseFirestore.instance,
    );
    getIt.registerLazySingleton<FirebaseCarDataSource>(
      () => FirebaseCarDataSource(firestore: getIt<FirebaseFirestore>()),
    );
    getIt.registerLazySingleton<CarRepository>(
      () => CarRepositoryImpl(
        firebaseCarDataSource: getIt<FirebaseCarDataSource>(),
      ),
    );
    getIt.registerLazySingleton<GetCars>(
      () => GetCars(
        carRepository: getIt<CarRepository>(),
      ),
    );
    getIt.registerFactory(
      () => CarBloc(
        getIt<GetCars>(),
      ),
    );
  } catch (e) {
    rethrow;
  }
}
