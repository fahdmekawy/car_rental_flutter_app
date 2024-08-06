import 'package:car_rental_app/core/theme/colors.dart';
import 'package:car_rental_app/features/onboarding/presentation/widgets/onboarding_button.dart';
import 'package:car_rental_app/features/onboarding/presentation/widgets/onboarding_texts.dart';
import 'package:flutter/material.dart';
import '../widgets/onboarding_image.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.onBoardingBackgroundColor,
      body: Column(
        children: [
          OnboardingImage(),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                OnboardingTexts(),
                OnboardingButton(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
