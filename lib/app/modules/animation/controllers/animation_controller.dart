import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AnimationCloudController extends GetxController
    with SingleGetTickerProviderMixin {
  AnimationController? animationController, animationControllerThree;
  AnimationController? animationControllerTow;
  Animation<Offset>? animation;
  Random random = new Random();

  @override
  void onInit() {
    ///
    animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 8000),
    );
    animationController!.forward();
    animationController!.repeat(reverse: false);
    animationController!.addListener;

    ///
    animationControllerTow = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 6000),
    );
    animationControllerTow!.forward();
    animationControllerTow!.repeat(reverse: false);
    animationControllerTow!.addListener;

    ///
    animationControllerThree = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 5000),
    );
    animationControllerThree!.forward();
    animationControllerThree!.repeat(reverse: false);
    animationControllerThree!.addListener;
    super.onInit();
  }

  @override
  void onReady() {}

  @override
  void onClose() {}
}
