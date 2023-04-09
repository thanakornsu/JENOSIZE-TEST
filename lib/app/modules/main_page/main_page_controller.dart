import 'dart:developer';

import 'package:app_jenosize/app/data/api/get_food_thai_list.dart';
import 'package:app_jenosize/app/data/model/base_list/base_list.dart';
import 'package:app_jenosize/app/data/model/food/food_model.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class MainPageController extends GetxController {
  //TODO: Implement MainPageController
  final imageURlLego =
      "https://scontent.fbkk12-5.fna.fbcdn.net/v/t39.30808-6/312181686_810614620303197_1172555098388138250_n.png?_nc_cat=107&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeGwB2cmo_dxpxu5n2zuFjG6P0naN9OEsEk_Sdo304SwSadWjbObKhSXJGyXCDXCY-TC3RTWpRA_bYYWPLN_TDRO&_nc_ohc=Ya-Yt_hZnVsAX9wJa_m&_nc_zt=23&_nc_ht=scontent.fbkk12-5.fna&oh=00_AfBlND1uUbw9CBSoOuaNhz_WudgJGNBjybwxpWGQoqFUdw&oe=6436F4FC";
  final count = 0.obs;
  @override
  void onInit() {
    log("1F");
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

  fetchFoodList() async {
    final BaseList<FoodModel>? foodThai = await getFoodThaiList();
    try {
      log("${foodThai?.data.length}");
    } on DioError catch (error) {
      log("$error");
    }
  }

  void increment() => count.value++;
}
