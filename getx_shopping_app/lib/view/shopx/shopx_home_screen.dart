import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:getx_shopping_app/controller/shopx/shopx_product_controller.dart';
import 'package:getx_shopping_app/view/shopx/shopx_product_tile.dart';

class shopx_home_screen extends StatelessWidget {
  const shopx_home_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping'),
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.shopping_cart,
            ),
            onPressed: () {},
          )
        ],
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
          onPressed: () {},
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  const Expanded(
                    child: Text(
                      'ShopX',
                      style: TextStyle(
                          fontFamily: 'avenir',
                          fontSize: 32,
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                  IconButton(
                      icon: const Icon(Icons.view_list_rounded),
                      onPressed: () {}),
                  IconButton(
                      icon: const Icon(Icons.grid_view), onPressed: () {}),
                ],
              ),
            ),
            Expanded(
              child: GetX<ShopXProductController>(
                builder: (shopXController) {
                  return shopXController.isLoading.value
                      ? AlignedGridView.count(
                          crossAxisCount: 2,
                          itemCount: shopXController.products.length,
                          mainAxisSpacing: 4,
                          crossAxisSpacing: 4,
                          itemBuilder: (context, index) {
                            return ShopXProcutTile(
                                product: shopXController.products[index]);
                          },
                        )
                      : const Center(
                          child: CircularProgressIndicator(
                            semanticsValue: '1',
                          ),
                        );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
