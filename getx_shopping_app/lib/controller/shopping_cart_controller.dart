import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:getx_shopping_app/model/product_model.dart';

class ShoppingCartController extends GetxController {
  var _cartItems = <ProductModel>[].obs;
  RxList<ProductModel> get cartIems => _cartItems;
  int get totalPrice =>
      _cartItems.fold(0, (sum, item) => sum + item.productPrice);

  addToCart(ProductModel product) {
    _cartItems.add(product);
  }
}
