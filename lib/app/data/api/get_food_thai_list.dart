import 'package:app_jenosize/app/data/api/dio_service.dart';
import 'package:app_jenosize/app/data/model/base_list/base_list.dart';
import 'package:app_jenosize/app/data/model/food/food_model.dart';

Future<BaseList<FoodModel>?> getFoodThaiList() async {
  final foodListResponse =
      await DioService().foodClientService.get('/74eeec69-9c7b-4709-aa86-8b1a474a4e91');

  if (foodListResponse.data != null) {
    return BaseList<FoodModel>.fromJson({
      "data": foodListResponse.data["data"],
    }, (p) {
      p as Map<String, Object?>;
      return FoodModel.fromJson(p);
    });
  }
  return null;
}
