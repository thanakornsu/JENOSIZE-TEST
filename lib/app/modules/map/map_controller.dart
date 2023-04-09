import 'dart:async';
import 'dart:developer';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapController extends GetxController {
  final Completer<GoogleMapController> controllerMap = Completer<GoogleMapController>();

  @override
  void onInit() {
    goToTheJenosize();
    log("2");
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  jenosize() {
    return Marker(
      markerId: const MarkerId("jenosize"),
      position: const LatLng(13.893991210919559, 100.51628283161017),
      icon: BitmapDescriptor.defaultMarkerWithHue(40.0),
      infoWindow: const InfoWindow(
        title: "Jenosize",
      ),
    );
  }

  Set<Marker> comparyJenosize() {
    return <Marker>{jenosize()};
  }

  CameraPosition kGooglePlex() {
    return const CameraPosition(
        bearing: 192.8334901395799,
        target: LatLng(13.893991210919559, 100.51628283161017),
        tilt: 59.440717697143555,
        zoom: 19.151926040649414);
  }

  CameraPosition kJenosize() {
    return const CameraPosition(
        bearing: 192.8334901395799,
        target: LatLng(13.893991210919559, 100.51628283161017),
        tilt: 59.440717697143555,
        zoom: 19.151926040649414);
  }

  Future<void> goToTheJenosize() async {
    final GoogleMapController controller = await controllerMap.future;
    controller.showMarkerInfoWindow(const MarkerId("jenosize"));
    controller.animateCamera(CameraUpdate.newCameraPosition(kJenosize()));
  }
}
