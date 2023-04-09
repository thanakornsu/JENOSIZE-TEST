import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'food_controller.dart';

class FoodView extends GetView<FoodController> {
  const FoodView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FoodView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'FoodView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
