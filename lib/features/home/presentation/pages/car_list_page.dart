import 'package:car_rental_app/features/home/data/models/car_model.dart';
import 'package:flutter/material.dart';

import '../widgets/car_card.dart';

class CarListPage extends StatelessWidget {
  const CarListPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<CarModel> car = [
      CarModel(
          model: 'BMW', distance: 1000, fuelCapacity: 50, pricePerHour: 45),
      CarModel(
          model: 'BMW', distance: 1000, fuelCapacity: 50, pricePerHour: 45),
      CarModel(
          model: 'BMW', distance: 1000, fuelCapacity: 50, pricePerHour: 45),
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Choose you car'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: ListView.builder(
        itemCount: car.length,
        itemBuilder: (context, index) => CarCard(
          carModel: car[index],
        ),
      ),
    );
  }
}
