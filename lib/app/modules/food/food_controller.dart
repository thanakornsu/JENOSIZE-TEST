import 'dart:developer';

import 'package:app_jenosize/app/core/widget/loading_widget.dart';
import 'package:app_jenosize/app/data/api/get_food_thai_list.dart';
import 'package:app_jenosize/app/data/model/base_list/base_list.dart';
import 'package:app_jenosize/app/data/model/food/food_model.dart';
import 'package:app_jenosize/app/data/services/keyboard_service.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class FoodController extends GetxController with StateMixin<List<FoodModel>> {
  //TODO: Implement FoodController
  final searchText = "".obs;
  var foodThais = <FoodModel>[];
  var filterFoodThai = <FoodModel>[];

  @override
  void onInit() {
    log("2");
    fetchFoodList();
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

//   fetchFoodList() async {
//     LoadingWidget.show();
//     final BaseList<FoodModel>? foodThai = await getFoodThaiList();
//     try {
//       LoadingWidget.dismiss();
//
//       foodThais.value = foodThai?.data ?? [];
//     } on DioError catch (error) {
//       log("$error");
//     }
//   }

  ////////////////////////////////////////////////////////////////////////////////////
  /// [Filter] ///
  ////////////////////////////////////////////////////////////////////////////////////

  clearSearch() {
    searchText.value = "";
    filterFoodThai = foodThais;
    change(filterFoodThai, status: RxStatus.success());
    KeyboardService.hide();
  }

  filterSearch(String? text) {
    final searchDefault = text ?? "";
    searchText.value = searchDefault;
    if (searchText.value.isEmpty) {
      filterFoodThai = foodThais;
    } else {
      filterFoodThai = foodThais.where((element) {
        return element.filter(searchDefault);
      }).toList();
    }
    if (filterFoodThai.isEmpty) {
      change([], status: RxStatus.empty());
    } else {
      change(filterFoodThai, status: RxStatus.success());
    }
  }

////////////////////////////////////////////////////////////////////////////////////
  /// [Fetch] [Data] ///
  ////////////////////////////////////////////////////////////////////////////////////

  fetchFoodList() async {
    if (state != null) {
      change(null, status: RxStatus.loading());
    }

    /// [Repository] [Reward] [List] ///
    final BaseList<FoodModel>? foodThai = await getFoodThaiList();
    if (foodThai?.data != null) {
      foodThais = foodThai?.data ?? [];
      filterFoodThai = foodThais;
      if (filterFoodThai.isEmpty) {
        change([], status: RxStatus.empty());
      } else {
        change(filterFoodThai, status: RxStatus.success());
      }
    } else {
      // dialogFailure(failure: response.error);
    }
  }
}
