import 'package:app_jenosize/app/core/utils/colors.dart';
import 'package:app_jenosize/app/core/widget/initialize_ui.dart';
import 'package:app_jenosize/app/data/enum/log.dart';
import 'package:app_jenosize/app/data/services/log_service.dart';
import 'package:app_jenosize/binding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'app/routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // init ui
  InitializeUI().init();

  // init binding
  await InitialBinding.initialize();

  await dotenv.load(fileName: ".env");

  runApp(
    GetMaterialApp(
      theme: ThemeData(
        primaryColor: AppColors.blue,
        primarySwatch: AppColors.orangeyYellow,
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(color: AppColors.white),
        ),
        dialogTheme: const DialogTheme(
          backgroundColor: AppColors.lightGray,
        ),
      ),

      //Route
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      defaultTransition: Transition.rightToLeft,
      transitionDuration: const Duration(milliseconds: 700),

      enableLog: LogService.instead.checkShowAndHideLog(type: LogFilerType.getx),

      //Easy Loading
      builder: EasyLoading.init(),
      debugShowCheckedModeBanner: false,
    ),
  );
}
