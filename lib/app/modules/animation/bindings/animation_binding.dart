import 'package:get/get.dart';

import '../controllers/animation_controller.dart';

class AnimationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AnimationCloudController>(
      () => AnimationCloudController(),
    );
  }
}
