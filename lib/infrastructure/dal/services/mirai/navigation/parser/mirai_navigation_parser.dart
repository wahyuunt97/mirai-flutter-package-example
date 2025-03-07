import 'dart:async'; // For FutureOr
import 'package:flutter/material.dart';
import 'package:get/get.dart'; // For navigation with GetX
import 'package:stac/stac.dart';

import '../navigate_parse.dart'; // For MiraiActionParser

class NavigateActionParser implements StacActionParser<NavigateAction> {
  @override
  String get actionType => 'navigates';

  @override
  NavigateAction getModel(Map<String, dynamic> json) => NavigateAction.fromJson(json);

  @override
  FutureOr onCall(BuildContext context, NavigateAction model) {
    print("on call triggered ${model.page}");
    Get.toNamed(model.page);
  }
}