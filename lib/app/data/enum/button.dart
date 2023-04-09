import 'package:app_jenosize/app/core/utils/space.dart';

enum ButtonSizeType { s, m, l, xl }

extension ExtensionButtonSizeType on ButtonSizeType {
  double get height {
    switch (this) {
      case ButtonSizeType.s:
        return spaceL;
      case ButtonSizeType.m:
        return spaceXL;
      case ButtonSizeType.l:
        return spaceXXXL;
      case ButtonSizeType.xl:
        return spaceXXXXL;
    }
  }
}
