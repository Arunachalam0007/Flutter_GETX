import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_basics_app/dashboardpage.dart';
import 'package:getx_basics_app/homepage.dart';

import 'getxcontroller_uniqueid/homeuniquecontroller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Put

    Get.put(HomeUniqueController(), tag: 'Unique');
    Get.put(HomeUniqueController(), tag: 'Unique2');

    // Lazy Put
    // Lazy Put Delete it's memory value once page is closed or pop and pushed
    // Lazy Put automatically Remove Instance when FENIX is False
    // When FENIX is True it will recreate the Instance

    //Get.lazyPut(() => HomeUniqueController(), fenix: true, tag: 'Unique');

    // Create
    // It's similary to Put but isSingleton is false
    // Put is creating Single instance troughout app
    // Create is creating Multiple instance thoughout App

    //Get.create(() => HomeUniqueController(), permanent: true, tag: 'Unique');

    // PutAsync
    // It's similary to put but It's Async

    //Get.putAsync(() async => await HomeUniqueController(), permanent: true, tag: 'Unique');

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
