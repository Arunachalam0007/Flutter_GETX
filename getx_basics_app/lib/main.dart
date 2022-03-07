import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_basics_app/dashboardpage.dart';
import 'package:getx_basics_app/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Get Material App',
      defaultTransition: Transition.downToUp,
      getPages: [
        GetPage(name: '/HomePage', page: () => const HomePage()),
        GetPage(name: '/DashboardPage', page: () => DashboardPage()),
      ],
      home: Scaffold(
        appBar: AppBar(
          title: Text('Route Naviagation'),
        ),
        body: Center(
          child: ElevatedButton(
            child: Text('Go to Home Page'),
            onPressed: () {
              Get.offAndToNamed('/HomePage');
            },
          ),
        ),
      ),
    );
  }
}
