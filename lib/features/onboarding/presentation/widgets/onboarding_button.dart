import 'package:car_rental_app/core/extensions/context.dart';
import 'package:flutter/material.dart';
import '../../../../core/theme/text_styles.dart';
import '../../../home/presentation/pages/car_list_page.dart';

class OnboardingButton extends StatelessWidget {
  const OnboardingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 320,
      height: 54,
      child: ElevatedButton(
        onPressed: () => context.navigateAndReplace(const CarListPage()),
        style: ElevatedButton.styleFrom(
            foregroundColor: Colors.black, backgroundColor: Colors.white),
        child: Text(
          'Let\'s Go',
          style: TextStyles.blackTextFont16Bold,
        ),
      ),
    );
  }
}
