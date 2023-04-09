import 'package:app_jenosize/app/core/utils/colors.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'map_controller.dart';

class MapView extends GetView<MapController> {
  const MapView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'แผนที่',
          style: TextStyle(color: AppColors.white),
        ),
        backgroundColor: AppColors.blue,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
        child: Container(
          width: Get.width,
          height: Get.height,
          decoration: BoxDecoration(
            border: Border.all(
              color: AppColors.black,
            ),
          ),
          child: GoogleMap(
            mapType: MapType.normal,
            markers: controller.comparyJenosize(),
            initialCameraPosition: controller.kGooglePlex(),
            onMapCreated: (GoogleMapController controllerGoogleMap) {
              controller.controllerMap.complete(controllerGoogleMap);
            },
          ),
        ),
      ),
    );
  }
}
