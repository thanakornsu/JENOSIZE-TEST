import 'package:app_jenosize/app/core/utils/space.dart';
import 'package:app_jenosize/app/data/model/food/food_model.dart';
import 'package:app_jenosize/app/data/services/image_service.dart';
import 'package:flutter/material.dart';
import 'package:textless/textless.dart';

class CardFoodWidget extends StatelessWidget {
  const CardFoodWidget({
    super.key,
    required this.food,
  });

  final FoodModel food;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: Row(
        children: [
          SizedBox(
            width: 120,
            height: 120,
            child: ImageService.loadImage(
              food.image,
            ),
          ),
          horizontalSpaceM,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              (food.name ?? "").h5.bold,
              verticalSpaceS,
              SizedBox(
                width: 190,
                child: (food.description ?? "").btn.maxLine(
                      4,
                    ),
              ),
              verticalSpaceS,
            ],
          )
        ],
      ),
    );
  }
}
