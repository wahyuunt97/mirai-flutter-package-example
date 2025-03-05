import 'package:flutter/material.dart';
import 'package:mirai_test/infrastructure/dal/services/mirai/widget/custom_container.dart';
import 'package:stac/stac.dart';

class CustomContainerParser extends StacParser<CustomContainer> {
  @override
  String get type => 'customContainer';

  @override
  CustomContainer getModel(Map<String, dynamic> json) {
    // Handle nulls with default values
    return CustomContainer(
      width: json['width'] as String? ?? "infinity",
      height: (json['height'] as num?)?.toDouble() ?? 50.0, // Default to 50.0
      color: json['color'] as String? ?? "#FFFFFF",         // Default to white
      child: json['child'] as Map<String, dynamic>,
    );
  }

  @override
  Widget parse(BuildContext context, CustomContainer model) {
    double width = model.width == "infinity"
        ? double.infinity
        : double.tryParse(model.width) ?? 0.0;

    Color color = Color(int.parse(model.color.replaceFirst('#', '0xFF')));

    // Parse the child widget if it exists
    Widget? childWidget;
    if (model.child != null) {
      childWidget = Stac.fromJson(model.child, context); // Parse using Mirai
    }

    return Container(
      width: width,
      height: model.height,
      color: color,
      child: childWidget, // Add the parsed child
    );
  }
}
