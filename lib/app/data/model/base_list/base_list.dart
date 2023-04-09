import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_list.freezed.dart';
part 'base_list.g.dart';

@Freezed(genericArgumentFactories: true)
class BaseList<T> with _$BaseList<T> {
  const factory BaseList({
    required List<T> data,
  }) = _BaseList;

  factory BaseList.fromJson(Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$BaseListFromJson(json, fromJsonT);
}
