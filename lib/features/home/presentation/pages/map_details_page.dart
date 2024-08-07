import 'package:car_rental_app/core/extensions/context.dart';
import 'package:car_rental_app/features/home/data/models/car_model.dart';
import 'package:car_rental_app/features/home/presentation/widgets/car_map_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class MapDetailsPage extends StatelessWidget {
  final CarModel carModel;

  const MapDetailsPage({super.key, required this.carModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () => context.pop(),
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Stack(
        children: [
          FlutterMap(
            options: const MapOptions(
                initialCenter: LatLng(51, -0.09), initialZoom: 13),
            children: [
              TileLayer(
                  urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                  subdomains: const ['a', 'b', 'c'],
                  maxNativeZoom: 19),
            ],
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: CarMapDetails(carModel: carModel),
          )
        ],
      ),
    );
  }
}
