import 'package:get/get.dart';

import '../../../../presentation/work/controllers/work.controller.dart';

class WorkControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WorkController>(
      () => WorkController(),
    );
  }
}
