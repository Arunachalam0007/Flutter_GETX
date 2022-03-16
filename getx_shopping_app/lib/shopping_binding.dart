import 'package:get/instance_manager.dart';

import 'controller/shopping_cart_controller.dart';
import 'controller/shopping_controller.dart';

class ShoppingBindings extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(ShoppingController());

    Get.put(ShoppingCartController());
  }
}
