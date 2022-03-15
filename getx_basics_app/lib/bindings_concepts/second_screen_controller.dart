import 'package:get/get_state_manager/get_state_manager.dart';

class SecondScreenController extends GetxController {
  int count = 0;
  void increment() {
    count++;
    update();
  }

  void decrement() {
    count--;
    update();
  }
}
