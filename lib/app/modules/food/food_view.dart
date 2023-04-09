import 'package:app_jenosize/app/core/utils/colors.dart';
import 'package:app_jenosize/app/core/utils/space.dart';
import 'package:app_jenosize/app/core/widget/circular_loading_widget.dart';
import 'package:app_jenosize/app/modules/food/widget/card_food_widget.dart';
import 'package:app_jenosize/app/modules/food/widget/search_list_widget.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:textless/textless.dart';

import 'food_controller.dart';

class FoodView extends GetView<FoodController> {
  const FoodView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'เมนู',
          style: TextStyle(color: AppColors.white),
        ),
        backgroundColor: AppColors.blue,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            verticalSpaceL,
            SearchListWidget(
              onChanged: controller.filterSearch,
              onClear: controller.clearSearch,
            ),
            verticalSpaceM,
            controller.obx(
              (state) {
                final list = state ?? [];
                return Expanded(
                  child: ListView.separated(
                    padding: EdgeInsets.zero,
                    physics: const BouncingScrollPhysics(),
                    itemCount: list.length,
                    itemBuilder: (context, index) {
                      final food = list[index];
                      return CardFoodWidget(food: food);
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return verticalSpaceS;
                    },
                  ),
                );
              },
              onLoading: const CircularLoadingWidget(),
              onEmpty: Expanded(
                child: Center(
                  child: SizedBox(
                    child: Center(
                      child: "ไม่มีข้อมูล".h6.color(AppColors.black87),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
