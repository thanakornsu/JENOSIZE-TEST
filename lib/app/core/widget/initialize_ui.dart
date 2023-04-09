import 'package:app_jenosize/app/core/utils/colors.dart';
import 'package:app_jenosize/app/core/utils/space.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';


class InitializeUI {
  init() {
    setupSystemUI();
    setLoadingProgressDialog();
  }

  void setupSystemUI() {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: AppColors.transparent,
        systemNavigationBarColor: AppColors.black,
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarIconBrightness: Brightness.light,
      ),
    );
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
  }

  void setLoadingProgressDialog() {
    EasyLoading.instance
      ..displayDuration = Duration(milliseconds: 2000)
      ..indicatorType = EasyLoadingIndicatorType.circle
      ..maskType = EasyLoadingMaskType.custom
      ..loadingStyle = EasyLoadingStyle.light
      ..indicatorSize = spaceXXXL
      ..radius = spaceM
      ..progressColor = AppColors.yellowMaize
      ..backgroundColor = AppColors.white
      ..indicatorColor = AppColors.yellowMaize
      ..textColor = AppColors.yellowMaize
      ..userInteractions = true
      ..dismissOnTap = false;
  }
}
