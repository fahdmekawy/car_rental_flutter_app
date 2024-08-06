import 'package:car_rental_app/core/common/widgets/vertical_space.dart';
import 'package:car_rental_app/core/theme/text_styles.dart';
import 'package:flutter/material.dart';

class OnboardingTexts extends StatelessWidget {
  const OnboardingTexts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Premium cars. \nEnjoy the luxury',
          style: TextStyles.whiteTextFont32Bold,
        ),
        const VerticalSpace(10),
        Text(
            'Premium and prestige car daily rental. \nExperience the thrill at a lower price',
            style: TextStyles.greyTextFont16Regular),
        const VerticalSpace(20),
      ],
    );
  }
}
