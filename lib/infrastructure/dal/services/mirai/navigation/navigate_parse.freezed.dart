// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'navigate_parse.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NavigateAction _$NavigateActionFromJson(Map<String, dynamic> json) {
  return _NavigateAction.fromJson(json);
}

/// @nodoc
mixin _$NavigateAction {
  String get page => throw _privateConstructorUsedError;

  /// Serializes this NavigateAction to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NavigateAction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NavigateActionCopyWith<NavigateAction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigateActionCopyWith<$Res> {
  factory $NavigateActionCopyWith(
          NavigateAction value, $Res Function(NavigateAction) then) =
      _$NavigateActionCopyWithImpl<$Res, NavigateAction>;
  @useResult
  $Res call({String page});
}

/// @nodoc
class _$NavigateActionCopyWithImpl<$Res, $Val extends NavigateAction>
    implements $NavigateActionCopyWith<$Res> {
  _$NavigateActionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NavigateAction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NavigateActionImplCopyWith<$Res>
    implements $NavigateActionCopyWith<$Res> {
  factory _$$NavigateActionImplCopyWith(_$NavigateActionImpl value,
          $Res Function(_$NavigateActionImpl) then) =
      __$$NavigateActionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String page});
}

/// @nodoc
class __$$NavigateActionImplCopyWithImpl<$Res>
    extends _$NavigateActionCopyWithImpl<$Res, _$NavigateActionImpl>
    implements _$$NavigateActionImplCopyWith<$Res> {
  __$$NavigateActionImplCopyWithImpl(
      _$NavigateActionImpl _value, $Res Function(_$NavigateActionImpl) _then)
      : super(_value, _then);

  /// Create a copy of NavigateAction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
  }) {
    return _then(_$NavigateActionImpl(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NavigateActionImpl implements _NavigateAction {
  const _$NavigateActionImpl({required this.page});

  factory _$NavigateActionImpl.fromJson(Map<String, dynamic> json) =>
      _$$NavigateActionImplFromJson(json);

  @override
  final String page;

  @override
  String toString() {
    return 'NavigateAction(page: $page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NavigateActionImpl &&
            (identical(other.page, page) || other.page == page));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, page);

  /// Create a copy of NavigateAction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NavigateActionImplCopyWith<_$NavigateActionImpl> get copyWith =>
      __$$NavigateActionImplCopyWithImpl<_$NavigateActionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NavigateActionImplToJson(
      this,
    );
  }
}

abstract class _NavigateAction implements NavigateAction {
  const factory _NavigateAction({required final String page}) =
      _$NavigateActionImpl;

  factory _NavigateAction.fromJson(Map<String, dynamic> json) =
      _$NavigateActionImpl.fromJson;

  @override
  String get page;

  /// Create a copy of NavigateAction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NavigateActionImplCopyWith<_$NavigateActionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
