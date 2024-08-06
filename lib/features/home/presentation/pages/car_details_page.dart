import 'package:car_rental_app/core/common/widgets/vertical_space.dart';
import 'package:car_rental_app/core/theme/colors.dart';
import 'package:car_rental_app/core/theme/text_styles.dart';
import 'package:car_rental_app/features/home/data/models/car_model.dart';
import 'package:flutter/material.dart';

import '../widgets/car_card.dart';
import '../widgets/more_card.dart';

class CardDetailsPage extends StatefulWidget {
  final CarModel carModel;

  const CardDetailsPage({super.key, required this.carModel});

  @override
  State<CardDetailsPage> createState() => _CardDetailsPageState();
}

class _CardDetailsPageState extends State<CardDetailsPage>
    with SingleTickerProviderStateMixin {
  AnimationController? _controller;
  Animation<double>? _animation;

  @override
  void initState() {
    _controller =
        AnimationController(duration: const Duration(seconds: 3), vsync: this);

    _animation = Tween<double>(begin: 1.0, end: 1.5).animate(_controller!)
      ..addListener(() {
        setState(() {});
      });

    _controller!.forward();

    super.initState();
  }

  @override
  void dispose() {
    _controller!.forward();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.info_outline),
            Text(' Information'),
          ],
        ),
      ),
      body: Column(
        children: [
          CarCard(
            carModel: CarModel(
                model: widget.carModel.model,
                distance: widget.carModel.distance,
                fuelCapacity: widget.carModel.fuelCapacity,
                pricePerHour: widget.carModel.pricePerHour),
          ),
          const VerticalSpace(20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: AppColors.carCardColor,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 10,
                          spreadRadius: 5,
                        )
                      ],
                    ),
                    child: Column(
                      children: [
                        const CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage('assets/images/user.png'),
                        ),
                        const VerticalSpace(10),
                        Text('Jane Cooper',
                            style: TextStyles.blackTextFont16Bold),
                        Text('\$4,253',
                            style: TextStyles.grayTextFont16Regular),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 170,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black12,
                              blurRadius: 10,
                              spreadRadius: 5)
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Transform.scale(
                          scale: _animation!.value,
                          alignment: Alignment.center,
                          child: Image.asset(
                            'assets/images/maps.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                MoreCard(
                    carModel: CarModel(
                        model: "${widget.carModel.model}-1",
                        distance: widget.carModel.distance + 100,
                        fuelCapacity: widget.carModel.fuelCapacity + 100,
                        pricePerHour: widget.carModel.pricePerHour + 10)),
                const VerticalSpace(5),
                MoreCard(
                    carModel: CarModel(
                        model: "${widget.carModel.model}-2",
                        distance: widget.carModel.distance + 200,
                        fuelCapacity: widget.carModel.fuelCapacity + 200,
                        pricePerHour: widget.carModel.pricePerHour + 20)),
                const VerticalSpace(5),
                MoreCard(
                    carModel: CarModel(
                        model: "${widget.carModel.model}-3",
                        distance: widget.carModel.distance + 300,
                        fuelCapacity: widget.carModel.fuelCapacity + 300,
                        pricePerHour: widget.carModel.pricePerHour + 30)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
