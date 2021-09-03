import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/animation_controller.dart';
import '/app/constants/app_colors.dart';
import '/app/constants/app_images.dart';

class AnimationView extends GetView<AnimationCloudController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kBg,
      body: GetBuilder<AnimationCloudController>(
        init: AnimationCloudController(),
        initState: (_) {},
        builder: (_) {
          return Container(
            height: Get.height,
            width: Get.width,
            child: Stack(
              children: [
                _cloudAnimationBloc(),
                Positioned(
                  top: Get.height * 0.35,
                  left: Get.width * 0.2,
                  child: Container(
                    height: Get.height * 0.32,
                    width: Get.height * 0.32,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(150),
                      color: Colors.white,
                    ),
                    child: _textBloc(),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }

  _textBloc() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Habchi ',
              style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.w900,
              ),
            ),
            Text(
              'Bessem',
              style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  color: AppColors.kBg),
            ),
          ],
        ),
        Text(
          'Flutter Developper',
          style: GoogleFonts.poppins(
            fontSize: 14,
            fontWeight: FontWeight.w800,
            color: Colors.grey[600],
          ),
        ),
      ],
    );
  }

  _cloudAnimationBloc() {
    return Stack(
      children: [
        Positioned(
          top: Get.height * 0.08,
          child: SlideTransition(
            position: Tween<Offset>(
              begin: Offset(-0.65, 0),
              end: Offset(0.65, 0),
            ).animate(controller.animationController!),
            child: Container(
              height: 50,
              width: Get.width,
              decoration: BoxDecoration(
                image:
                    DecorationImage(image: AssetImage(AppImages.kCloudImage)),
              ),
            ),
          ),
        ),
        Positioned(
          top: Get.height * 0.20,
          child: SlideTransition(
            position: Tween<Offset>(
              begin: Offset(0.65, 0),
              end: Offset(-0.65, 0),
            ).animate(controller.animationControllerTow!),
            child: Container(
              height: 85,
              width: Get.width,
              decoration: BoxDecoration(
                image:
                    DecorationImage(image: AssetImage(AppImages.kCloudImage)),
              ),
            ),
          ),
        ),
        Positioned(
          top: Get.height * 0.45,
          child: SlideTransition(
            position: Tween<Offset>(
              begin: Offset(-0.65, 0),
              end: Offset(0.65, 0),
            ).animate(controller.animationControllerThree!),
            child: Container(
              height: 70,
              width: Get.width,
              decoration: BoxDecoration(
                image:
                    DecorationImage(image: AssetImage(AppImages.kCloudImage)),
              ),
            ),
          ),
        ),
        Positioned(
          top: Get.height * 0.65,
          child: SlideTransition(
            position: Tween<Offset>(
              begin: Offset(0.65, 0),
              end: Offset(-0.65, 0),
            ).animate(controller.animationControllerThree!),
            child: Container(
              height: 50,
              width: Get.width,
              decoration: BoxDecoration(
                image:
                    DecorationImage(image: AssetImage(AppImages.kCloudImage)),
              ),
            ),
          ),
        ),
        Positioned(
          top: Get.height * 0.85,
          child: SlideTransition(
            position: Tween<Offset>(
              begin: Offset(0.65, 0),
              end: Offset(-0.65, 0),
            ).animate(controller.animationControllerTow!),
            child: Container(
              height: 60,
              width: Get.width,
              decoration: BoxDecoration(
                image:
                    DecorationImage(image: AssetImage(AppImages.kCloudImage)),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
