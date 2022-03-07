import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_basics_app/dashboard_getx_provider.dart';
import 'package:getx_basics_app/usermodel.dart';

class DashboardPage extends StatelessWidget {
  // // GETX Controller
  // var dashboardData =
  //     Get.put(DashboardData(dashboardName: 'Developer', dashboardNumber: 3));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DashBoard Page'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GetX<DashboardData>(
              init: DashboardData(),
              builder: (data) {
                return Column(
                  children: [
                    Text(
                      'Dashboard: ${data.dashboardName}',
                      style: TextStyle(color: Colors.red, fontSize: 30),
                    ),
                    Text(
                      'Dashboard Serial Number: ${data.dashboardNumber}',
                      style: TextStyle(color: Colors.red, fontSize: 20),
                    ),
                  ],
                );
              }),
          // Obx(() => Column(
          //       crossAxisAlignment: CrossAxisAlignment.start,
          //       children: [
          //         Text('User Name: ${userData.value.name}'),
          //         Text('User Age: ${userData.value.age}'),
          //         Text('User Gender: ${userData.value.gender}'),
          //       ],
          //     )),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     ElevatedButton(
          //       onPressed: () {
          //         userData.update((userDataVal) {
          //           userDataVal?.age--;
          //         });
          //       },
          //       child: const Icon(Icons.remove),
          //     ),
          //     const SizedBox(
          //       width: 10,
          //     ),
          //     Obx(
          //       () => Column(
          //         children: [Text('${userData.value.age}')],
          //       ),
          //     ),
          //     const SizedBox(
          //       width: 10,
          //     ),
          //     ElevatedButton(
          //       onPressed: () {
          //         userData.update((userDataVal) {
          //           userDataVal?.age++;
          //         });
          //       },
          //       child: const Icon(Icons.add),
          //     ),
          //   ],
          // ),
          // ElevatedButton(
          //   child: Text('Go to Home Page'),
          //   onPressed: () {
          //     Get.back();
          //   },
          // ),
        ],
      ),
    );
  }
}
