import 'package:app_jenosize/app/data/api/smart_dio_intetcepters.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class DioService {
  late Dio foodClientService;

  static final DioService _dioService = DioService._internal();

  factory DioService() {
    return _dioService;
  }

  DioService._internal() {
    final smartDioOptions = BaseOptions(
      baseUrl: dotenv.env['Thai_Food_URL']!,
      connectTimeout: 90000,
      receiveTimeout: 90000,
    );
    foodClientService = Dio(smartDioOptions); // with default Options

    foodClientService.interceptors.add(SmartDioInterceptors());
  }
}
