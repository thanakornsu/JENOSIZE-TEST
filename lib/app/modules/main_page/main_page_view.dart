import 'package:app_jenosize/app/core/utils/colors.dart';
import 'package:app_jenosize/app/core/utils/space.dart';
import 'package:app_jenosize/app/core/widget/button_widget.dart';
import 'package:app_jenosize/app/core/widget/default_button.dart';
import 'package:app_jenosize/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'main_page_controller.dart';

class MainPageView extends GetView<MainPageController> {
  const MainPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 60),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              Image.network(
                controller.imageURlLego,
                scale: 3,
              ),
              const Text(
                'LEGO JENOSIZE',
                style: TextStyle(fontSize: 20),
              ),
              const Spacer(),
              ButtonWidget.blueShadow(
                title: "ค้นหาร้านอาหาร",
                onTap: () {
                  Get.toNamed(Routes.FOOD);
                },
              ),
              verticalSpaceM,
              ButtonWidget.blueShadow(
                title: "แผนที่ บริษัท Jenosize",
                onTap: Get.back,
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
