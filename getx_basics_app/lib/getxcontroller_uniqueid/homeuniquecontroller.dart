import 'package:get/get_state_manager/get_state_manager.dart';

class HomeUniqueController extends GetxController {
  int count = 10;

  void increment() {
    count++;
    update(['Home Id']);
  }

  void decrement() {
    count--;
    update(['Home Id']);
  }
}
