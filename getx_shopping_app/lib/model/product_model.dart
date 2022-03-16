import 'package:get/get_rx/src/rx_types/rx_types.dart';

class ProductModel {
  final int id;
  final String productName;
  final String productDesc;
  final String productImg;
  final int productPrice;
  var isFavorite = false.obs;

  ProductModel({
    required this.id,
    required this.productName,
    required this.productDesc,
    required this.productImg,
    required this.productPrice,
  });
}
