import 'dart:convert';

import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:getx_shopping_app/model/shopx/shopx_product_model.dart';
import 'package:getx_shopping_app/services/remote_services.dart';

class ShopXProductController extends GetxController {
  var products = <ShopXProductModel>[].obs;

  var isLoading = false.obs;

  @override
  void onInit() {
    fetchShopXProducts();
    super.onInit();
  }

  void fetchShopXProducts() async {
    isLoading.value = false;
    var response = await RemoteServices.fetchShopXProductResponse();
    try {
      if (response.statusCode == 200) {
        var resBody = response.body;
        var listOfProducts =
            json.decode(resBody).map((val) => ShopXProductModel.fromJson(val));
        products.value = List<ShopXProductModel>.from(listOfProducts);
        var prod = shopXProductModelFromJson(resBody);
        // print(products.map((element) => print(element.id)));
      } else {}
    } finally {
      // TODO
      isLoading.value = true;
    }
  }
}
