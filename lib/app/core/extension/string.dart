import 'package:intl/intl.dart';

extension ReplaceString on String {
  String get replaceSpecialCharacters {
    return this.replaceAll(RegExp('[^A-Za-z0-9.]'), '');
  }
}

extension FormatString on String {
  String get removeLastCharacters {
    if (this.length > 0) {
      return this.substring(0, this.length - 1);
    }

    return this;
  }

  int get toInt {
    if (this == "") return 0;
    try {
      return int.parse(this);
    } catch (_) {
      return 0;
    }
  }

  double get toDouble {
    if (this == "") return 0.0;
    try {
      return double.parse(this);
    } catch (_) {
      return 0.0;
    }
  }

  DateTime toDateTime({required DateFormat dateFormat}) {
    return dateFormat.parse(this);
  }
}

extension OptionalString on String? {
  String get defaultString {
    if (this != null) {
      return this!;
    }
    return "";
  }
}

extension OptionalInt on int? {
  int get defaultInt {
    if (this != null) {
      return this!;
    }
    return 0;
  }
}

extension OptionalDouble on double? {
  double get defaultDouble {
    if (this != null) {
      return this!;
    }
    return 0.0;
  }
}

extension OptionalBool on bool? {
  bool get defaultBool {
    if (this != null) {
      return this!;
    }
    return false;
  }
}
