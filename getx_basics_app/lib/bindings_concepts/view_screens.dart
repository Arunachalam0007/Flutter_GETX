import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:getx_basics_app/bindings_concepts/first_screen.dart';
import 'package:getx_basics_app/bindings_concepts/screen_controller_binding.dart';
import 'package:getx_basics_app/bindings_concepts/second_screen.dart';

class ViewScreens extends StatelessWidget {
  const ViewScreens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List of Screens'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.to(FirstScreen(), binding: ScreenControllerBinding());
              },
              child: Text('First Screen'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(SecondScreen(), binding: ScreenControllerBinding());
              },
              child: Text('Second Screen'),
            ),
          ],
        ),
      ),
    );
  }
}
