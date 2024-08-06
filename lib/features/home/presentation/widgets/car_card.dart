import 'package:car_rental_app/core/common/widgets/horizontal_space.dart';
import 'package:car_rental_app/core/common/widgets/vertical_space.dart';
import 'package:car_rental_app/core/extensions/context.dart';
import 'package:car_rental_app/core/theme/colors.dart';
import 'package:car_rental_app/core/theme/text_styles.dart';
import 'package:car_rental_app/features/home/data/models/car_model.dart';
import 'package:car_rental_app/features/home/presentation/pages/car_details_page.dart';
import 'package:flutter/material.dart';

class CarCard extends StatelessWidget {
  final CarModel carModel;

  const CarCard({super.key, required this.carModel});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.navigateTo(CardDetailsPage(carModel: carModel));
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: AppColors.carCardColor,
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(color: Colors.black12, blurRadius: 10, spreadRadius: 5)
          ],
        ),
        child: Column(
          children: [
            Image.asset('assets/images/car_image.png', height: 120),
            Text(carModel.model, style: TextStyles.blackTextFont20Bold),
            const VerticalSpace(10),
            Row(
              children: [
                Image.asset('assets/images/gps.png'),
                Text(' ${carModel.distance.toStringAsFixed(0)}km'),
                const HorizontalSpace(10),
                Image.asset('assets/images/pump.png'),
                Text(' ${carModel.fuelCapacity.toStringAsFixed(0)}L'),
                const Spacer(),
                Text(
                  '\$${carModel.pricePerHour.toStringAsFixed(2)}/h',
                  style: TextStyles.blackTextFont16Regular,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
