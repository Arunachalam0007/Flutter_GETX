import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:getx_shopping_app/shopping_binding.dart';
import 'package:getx_shopping_app/view/shopping_screen.dart';
import 'package:getx_shopping_app/view/shopx/shopx_home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Shopping APP',
      initialBinding: ShoppingBindings(),
      home: ShoppingScreen(),
      // home: shopx_home_screen(),
    );
  }
}
