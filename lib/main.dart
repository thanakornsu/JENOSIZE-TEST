import 'package:app_jenosize/app/core/utils/colors.dart';
import 'package:app_jenosize/app/data/enum/log.dart';
import 'package:app_jenosize/app/data/services/log_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      theme: ThemeData(
        primaryColor: AppColors.yellow,
        primarySwatch: AppColors.orangeyYellow,
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(color: AppColors.black),
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
