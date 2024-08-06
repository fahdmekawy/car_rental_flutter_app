import 'package:car_rental_app/core/common/widgets/horizontal_space.dart';
import 'package:car_rental_app/core/common/widgets/vertical_space.dart';
import 'package:car_rental_app/core/theme/colors.dart';
import 'package:car_rental_app/core/theme/text_styles.dart';
import 'package:car_rental_app/features/home/data/models/car_model.dart';
import 'package:flutter/material.dart';

class MoreCard extends StatelessWidget {
  final CarModel carModel;

  const MoreCard({super.key, required this.carModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: AppColors.moreCardColor,
          borderRadius: BorderRadius.circular(18),
          boxShadow: const [
            BoxShadow(
              color: Colors.black54,
              blurRadius: 8,
              offset: Offset(0, 4),
            )
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(carModel.model, style: TextStyles.whiteTextFont16Bold),
              const VerticalSpace(5),
              Row(
                children: [
                  const Icon(
                    Icons.directions_car,
                    color: Colors.white,
                    size: 16,
                  ),
                  const HorizontalSpace(5),
                  Text(
                    '> ${carModel.distance} km',
                    style: TextStyles.whiteText14Regular,
                  ),
                  const HorizontalSpace(5),
                  const Icon(
                    Icons.battery_full,
                    color: Colors.white,
                    size: 16,
                  ),
                  const HorizontalSpace(5),
                  Text(carModel.fuelCapacity.toString(),
                      style: TextStyles.whiteText14Regular),
                ],
              )
            ],
          ),
          const Icon(Icons.arrow_forward_ios, color: Colors.white, size: 24)
        ],
      ),
    );
  }
}
