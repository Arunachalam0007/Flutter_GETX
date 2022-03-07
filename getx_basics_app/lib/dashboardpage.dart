import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DashBoard Page'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Go to Home Page'),
          onPressed: () {
            Get.back();
          },
        ),
      ),
    );
  }
}
