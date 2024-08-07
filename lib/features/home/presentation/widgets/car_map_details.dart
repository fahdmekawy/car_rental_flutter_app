import 'package:car_rental_app/core/common/widgets/horizontal_space.dart';
import 'package:car_rental_app/core/common/widgets/vertical_space.dart';
import 'package:car_rental_app/core/theme/text_styles.dart';
import 'package:car_rental_app/features/home/data/models/car_model.dart';
import 'package:car_rental_app/features/home/presentation/widgets/car_features_widget.dart';
import 'package:flutter/material.dart';

class CarMapDetails extends StatelessWidget {
  final CarModel carModel;

  const CarMapDetails({super.key, required this.carModel});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.black54,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              boxShadow: [
                BoxShadow(
                    color: Colors.black38, spreadRadius: 0, blurRadius: 10)
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const VerticalSpace(20),
                Text(carModel.model, style: TextStyles.whiteTextFont24Bold),
                const VerticalSpace(10),
                Row(
                  children: [
                    const Icon(Icons.directions_car,
                        color: Colors.white, size: 16),
                    const SizedBox(width: 5),
                    Text('> ${carModel.distance} km',
                        style: TextStyles.whiteTextFont16Regular),
                    const HorizontalSpace(10),
                    const Icon(Icons.battery_full,
                        color: Colors.white, size: 14),
                    const HorizontalSpace(5),
                    Text(
                      carModel.fuelCapacity.toString(),
                      style: TextStyles.whiteTextFont16Regular,
                    ),
                  ],
                )
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20),
                  )),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Features",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const CarFeaturesWidget(),
                  const VerticalSpace(20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '\$${carModel.pricePerHour}/day',
                        style: TextStyles.blackTextFont28Bold,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                        ),
                        child: Text('Book Now',
                            style: TextStyles.whiteTextFont16Regular),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: 50,
            right: 20,
            child: Image.asset('assets/images/white_car.png'),
          )
        ],
      ),
    );
  }
}
