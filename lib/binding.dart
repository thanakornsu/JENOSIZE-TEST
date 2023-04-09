import 'package:app_jenosize/app/data/services/log_service.dart';

class InitialBinding {
  static initialize() async {
    /// [LogService] :: [initialize]
    await LogService.initialize();

    /// [Database] :: [initialize]
    // await HiveProvider.initialize();
  }
}
