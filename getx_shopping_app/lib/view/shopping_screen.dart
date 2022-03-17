import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:getx_shopping_app/controller/shopping_cart_controller.dart';
import 'package:getx_shopping_app/controller/shopping_controller.dart';

class ShoppingScreen extends StatelessWidget {
  ShoppingScreen({Key? key}) : super(key: key);

  //final ShoppingController shoppingController = Get.put(ShoppingController());
  final ShoppingCartController shoppingCartController =
      Get.put(ShoppingCartController());

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping View'),
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {},
          label:
              //  GetBuilder<ShoppingCartController>(builder: (shpController) {
              //   return Text('${shpController.cartItems.length}');
              // }),
              Obx(() {
            return Text('${shoppingCartController.cartIems.length}');
          })),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: GetX<ShoppingController>(builder: (shoppingControl) {
                return ListView.builder(
                    itemCount: shoppingControl.products.length,
                    itemBuilder: (context, index) {
                      return ShoppingListCardWidget(
                        shpController: shoppingControl,
                        //   shpCartController: shoppingCartController,
                        index: index,
                      );
                    });
              }),
            ),
            GetX<ShoppingCartController>(builder: (cartController) {
              return Text('Total Amount: \$${cartController.totalPrice}');
            }),
            SizedBox(
              height: height * 0.08,
            )
          ],
        ),
      ),
    );
  }
}

class ShoppingListCardWidget extends StatelessWidget {
  final ShoppingController shpController;
  // final ShoppingCartController shpCartController;
  final int index;
  const ShoppingListCardWidget({
    required this.shpController,
    // required this.shpCartController,
    required this.index,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(12),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      shpController.products[index].productName,
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      shpController.products[index].productDesc,
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      '\$${shpController.products[index].productPrice}',
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Get.find<ShoppingCartController>()
                            .addToCart(shpController.products[index]);
                      },
                      child: const Icon(Icons.add_shopping_cart),
                    ),
                    Obx(() {
                      return IconButton(
                          onPressed: () {
                            shpController.products[index].isFavorite.toggle();
                          },
                          icon: shpController.products[index].isFavorite.value
                              ? const Icon(Icons.check_box_rounded)
                              : const Icon(
                                  Icons.check_box_outline_blank_outlined));
                    })
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
