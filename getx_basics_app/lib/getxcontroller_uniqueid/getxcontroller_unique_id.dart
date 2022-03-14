import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:getx_basics_app/getxcontroller_uniqueid/homeuniquecontroller.dart';

class HomeControllerUniqueIdScreen extends StatelessWidget {
  const HomeControllerUniqueIdScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //  HomeUniqueController uniqueController = Get.put(HomeUniqueController());

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'GETX Controller Based on Unique ID',
          style: TextStyle(
            fontSize: 15,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.find<HomeUniqueController>(tag: 'Unique').increment();
                  //  uniqueController.increment();
                },
                child: const Icon(Icons.add)),
            const SizedBox(
              height: 10,
            ),
            GetBuilder<HomeUniqueController>(
              tag: 'Unique',
              id: 'Home Id',
              builder: (data) {
                return Text("Count: ${data.count}");
              },
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  Get.find<HomeUniqueController>(tag: 'Unique').decrement();

                  // uniqueController.decrement();
                },
                child: const Icon(Icons.remove))
          ],
        ),
      ),
    );
  }
}
