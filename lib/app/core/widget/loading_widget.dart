import 'package:flutter_easyloading/flutter_easyloading.dart';

class LoadingWidget {
  static void show() {
    EasyLoading.show(
      status: "กำลังโหลด",
      maskType: EasyLoadingMaskType.black,
    );
  }

  static void dismiss() {
    EasyLoading.dismiss();
  }
}
