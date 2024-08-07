import 'package:car_rental_app/core/theme/text_styles.dart';
import 'package:flutter/material.dart';

class CarFeature extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;

  const CarFeature(this.icon, this.title, this.subtitle, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey, width: 1)),
      child: Column(
        children: [
          Icon(icon, size: 28),
          Text(title),
          Text(subtitle, style: TextStyles.grayTextFont10Regular)
        ],
      ),
    );
  }
}
