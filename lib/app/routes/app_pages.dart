import 'package:annimation_splash_cloud/app/modules/animation/bindings/animation_binding.dart';
import 'package:annimation_splash_cloud/app/modules/animation/views/annimation_view.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.ANNIMATION;

  static final routes = [
    GetPage(
      name: _Paths.ANNIMATION,
      page: () => AnimationView(),
      binding: AnimationBinding(),
    ),
  ];
}
