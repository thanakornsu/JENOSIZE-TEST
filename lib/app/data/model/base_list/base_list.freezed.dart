// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BaseList<T> _$BaseListFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return _BaseList<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$BaseList<T> {
  List<T> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BaseListCopyWith<T, BaseList<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseListCopyWith<T, $Res> {
  factory $BaseListCopyWith(
          BaseList<T> value, $Res Function(BaseList<T>) then) =
      _$BaseListCopyWithImpl<T, $Res, BaseList<T>>;
  @useResult
  $Res call({List<T> data});
}

/// @nodoc
class _$BaseListCopyWithImpl<T, $Res, $Val extends BaseList<T>>
    implements $BaseListCopyWith<T, $Res> {
  _$BaseListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<T>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BaseListCopyWith<T, $Res>
    implements $BaseListCopyWith<T, $Res> {
  factory _$$_BaseListCopyWith(
          _$_BaseList<T> value, $Res Function(_$_BaseList<T>) then) =
      __$$_BaseListCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({List<T> data});
}

/// @nodoc
class __$$_BaseListCopyWithImpl<T, $Res>
    extends _$BaseListCopyWithImpl<T, $Res, _$_BaseList<T>>
    implements _$$_BaseListCopyWith<T, $Res> {
  __$$_BaseListCopyWithImpl(
      _$_BaseList<T> _value, $Res Function(_$_BaseList<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_BaseList<T>(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<T>,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$_BaseList<T> with DiagnosticableTreeMixin implements _BaseList<T> {
  const _$_BaseList({required final List<T> data}) : _data = data;

  factory _$_BaseList.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$_BaseListFromJson(json, fromJsonT);

  final List<T> _data;
  @override
  List<T> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BaseList<$T>(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BaseList<$T>'))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BaseList<T> &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BaseListCopyWith<T, _$_BaseList<T>> get copyWith =>
      __$$_BaseListCopyWithImpl<T, _$_BaseList<T>>(this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$_BaseListToJson<T>(this, toJsonT);
  }
}

abstract class _BaseList<T> implements BaseList<T> {
  const factory _BaseList({required final List<T> data}) = _$_BaseList<T>;

  factory _BaseList.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$_BaseList<T>.fromJson;

  @override
  List<T> get data;
  @override
  @JsonKey(ignore: true)
  _$$_BaseListCopyWith<T, _$_BaseList<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
