// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'custom_container.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CustomContainerImpl _$$CustomContainerImplFromJson(
        Map<String, dynamic> json) =>
    _$CustomContainerImpl(
      width: json['width'] as String,
      height: (json['height'] as num).toDouble(),
      color: json['color'] as String,
      child: json['child'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$CustomContainerImplToJson(
        _$CustomContainerImpl instance) =>
    <String, dynamic>{
      'width': instance.width,
      'height': instance.height,
      'color': instance.color,
      'child': instance.child,
    };
