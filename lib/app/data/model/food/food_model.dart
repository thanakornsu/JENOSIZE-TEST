import 'package:app_jenosize/app/core/extension/string.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'food_model.freezed.dart';
part 'food_model.g.dart';

@freezed
class FoodModel with _$FoodModel {
  const FoodModel._();

  const factory FoodModel({
    String? name,
    String? description,
    String? image,
  }) = _FoodModel;

  factory FoodModel.fromJson(Map<String, Object?> json) => _$FoodModelFromJson(json);
  bool filter(String search) {
    return name.defaultString.toLowerCase().contains(search);
  }
}
