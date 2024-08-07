import 'package:car_rental_app/features/home/presentation/widgets/car_feature.dart';
import 'package:flutter/material.dart';

class CarFeaturesWidget extends StatelessWidget {
  const CarFeaturesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CarFeature(Icons.local_gas_station, 'Diesel', 'Common Rail'),
        CarFeature(Icons.speed, 'Acceleration', '0 - 100km/s'),
        CarFeature(Icons.ac_unit, 'Cold', 'Temp Control'),
      ],
    );
  }
}
