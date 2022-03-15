import 'package:get/instance_manager.dart';
import 'package:getx_basics_app/bindings_concepts/first_screen_controller.dart';

import 'second_screen_controller.dart';

class ScreenControllerBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies

    Get.lazyPut(() => SecondScreenController(), fenix: true);
    Get.lazyPut(() => FirstScreenController(), fenix: true);
  }
}
