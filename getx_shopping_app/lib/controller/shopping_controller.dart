import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:getx_shopping_app/model/product_model.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

class ShoppingController extends GetxController {
  var products = <ProductModel>[].obs;

  //get products => _products;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    fetchProducts();
  }

  void fetchProducts() async {
    //await Future.delayed(const Duration(seconds: 2));
    var productsList = [
      ProductModel(
          id: 1,
          productName: 'RoadStart Shirt',
          productDesc: 'Shirt Type',
          productImg: '',
          productPrice: 20),
      ProductModel(
          id: 2,
          productName: 'NIKE Shoe',
          productDesc: 'Shoe Type',
          productImg: '',
          productPrice: 40),
      ProductModel(
          id: 3,
          productName: 'FastTrack Watch',
          productDesc: 'Watch Type',
          productImg: '',
          productPrice: 10),
    ];
    products.value = productsList;
  }
}
