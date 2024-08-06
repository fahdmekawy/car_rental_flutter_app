import 'package:flutter/material.dart';
import '../../../../core/theme/text_styles.dart';

class OnboardingButton extends StatelessWidget {
  const OnboardingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 320,
      height: 54,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
        ),
        child: Text(
          'Let\'s Go',
          style: TextStyles.blackTextFont16Bold,
        ),
      ),
    );
  }
}
