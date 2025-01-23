// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'custom_container.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CustomContainer _$CustomContainerFromJson(Map<String, dynamic> json) {
  return _CustomContainer.fromJson(json);
}

/// @nodoc
mixin _$CustomContainer {
  String get width =>
      throw _privateConstructorUsedError; // "infinity" or specific double value
  double get height => throw _privateConstructorUsedError;
  String get color =>
      throw _privateConstructorUsedError; // Hex color string, e.g., "#FF0000"
  Map<String, dynamic> get child => throw _privateConstructorUsedError;

  /// Serializes this CustomContainer to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CustomContainer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CustomContainerCopyWith<CustomContainer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomContainerCopyWith<$Res> {
  factory $CustomContainerCopyWith(
          CustomContainer value, $Res Function(CustomContainer) then) =
      _$CustomContainerCopyWithImpl<$Res, CustomContainer>;
  @useResult
  $Res call(
      {String width, double height, String color, Map<String, dynamic> child});
}

/// @nodoc
class _$CustomContainerCopyWithImpl<$Res, $Val extends CustomContainer>
    implements $CustomContainerCopyWith<$Res> {
  _$CustomContainerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CustomContainer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? width = null,
    Object? height = null,
    Object? color = null,
    Object? child = null,
  }) {
    return _then(_value.copyWith(
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as String,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      child: null == child
          ? _value.child
          : child // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CustomContainerImplCopyWith<$Res>
    implements $CustomContainerCopyWith<$Res> {
  factory _$$CustomContainerImplCopyWith(_$CustomContainerImpl value,
          $Res Function(_$CustomContainerImpl) then) =
      __$$CustomContainerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String width, double height, String color, Map<String, dynamic> child});
}

/// @nodoc
class __$$CustomContainerImplCopyWithImpl<$Res>
    extends _$CustomContainerCopyWithImpl<$Res, _$CustomContainerImpl>
    implements _$$CustomContainerImplCopyWith<$Res> {
  __$$CustomContainerImplCopyWithImpl(
      _$CustomContainerImpl _value, $Res Function(_$CustomContainerImpl) _then)
      : super(_value, _then);

  /// Create a copy of CustomContainer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? width = null,
    Object? height = null,
    Object? color = null,
    Object? child = null,
  }) {
    return _then(_$CustomContainerImpl(
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as String,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      child: null == child
          ? _value._child
          : child // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CustomContainerImpl implements _CustomContainer {
  _$CustomContainerImpl(
      {required this.width,
      required this.height,
      required this.color,
      required final Map<String, dynamic> child})
      : _child = child;

  factory _$CustomContainerImpl.fromJson(Map<String, dynamic> json) =>
      _$$CustomContainerImplFromJson(json);

  @override
  final String width;
// "infinity" or specific double value
  @override
  final double height;
  @override
  final String color;
// Hex color string, e.g., "#FF0000"
  final Map<String, dynamic> _child;
// Hex color string, e.g., "#FF0000"
  @override
  Map<String, dynamic> get child {
    if (_child is EqualUnmodifiableMapView) return _child;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_child);
  }

  @override
  String toString() {
    return 'CustomContainer(width: $width, height: $height, color: $color, child: $child)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomContainerImpl &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.color, color) || other.color == color) &&
            const DeepCollectionEquality().equals(other._child, _child));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, width, height, color,
      const DeepCollectionEquality().hash(_child));

  /// Create a copy of CustomContainer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomContainerImplCopyWith<_$CustomContainerImpl> get copyWith =>
      __$$CustomContainerImplCopyWithImpl<_$CustomContainerImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomContainerImplToJson(
      this,
    );
  }
}

abstract class _CustomContainer implements CustomContainer {
  factory _CustomContainer(
      {required final String width,
      required final double height,
      required final String color,
      required final Map<String, dynamic> child}) = _$CustomContainerImpl;

  factory _CustomContainer.fromJson(Map<String, dynamic> json) =
      _$CustomContainerImpl.fromJson;

  @override
  String get width; // "infinity" or specific double value
  @override
  double get height;
  @override
  String get color; // Hex color string, e.g., "#FF0000"
  @override
  Map<String, dynamic> get child;

  /// Create a copy of CustomContainer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CustomContainerImplCopyWith<_$CustomContainerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
