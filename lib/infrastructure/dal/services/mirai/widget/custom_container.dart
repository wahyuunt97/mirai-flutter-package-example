import 'package:freezed_annotation/freezed_annotation.dart';

part 'custom_container.freezed.dart';
part 'custom_container.g.dart';

@freezed
class CustomContainer with _$CustomContainer {
  factory CustomContainer({
    required String width, // "infinity" or specific double value
    required double height,
    required String color, // Hex color string, e.g., "#FF0000"
    required Map<String, dynamic> child, // Hex color string, e.g., "#FF0000"
  }) = _CustomContainer;

  factory CustomContainer.fromJson(Map<String, dynamic> json) =>
      _$CustomContainerFromJson(json);
}