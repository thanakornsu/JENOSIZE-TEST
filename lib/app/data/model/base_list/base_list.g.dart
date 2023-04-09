// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BaseList<T> _$$_BaseListFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$_BaseList<T>(
      data: (json['data'] as List<dynamic>).map(fromJsonT).toList(),
    );

Map<String, dynamic> _$$_BaseListToJson<T>(
  _$_BaseList<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'data': instance.data.map(toJsonT).toList(),
    };
