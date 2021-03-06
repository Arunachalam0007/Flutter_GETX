import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_basics_app/dashboardpage.dart';

import 'bindings_concepts/view_screens.dart';
import 'getxcontroller_uniqueid/getxcontroller_unique_id.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.to(ViewScreens());
              },
              child: Text('GO TO View Screens'),
            ),
            ElevatedButton(
                onPressed: () {
                  Get.to(HomeControllerUniqueIdScreen());
                },
                child: Text('Go to GETX Uniquie ID Controller')),
            ElevatedButton(
              onPressed: () {
                Get.to(() => DashboardPage());
              },
              child: const Text(
                'Go To DashBoard Page',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Get.snackbar('GetX Home Page Snackbar', 'Hello Guys');
                Get.snackbar(
                  'MY Text',
                  'Hello Guys',
                  snackPosition: SnackPosition.BOTTOM,
                  duration: 3.seconds,
                  icon: Icon(Icons.account_balance),
                  titleText: ListTile(
                    title: Text('Bank Title Tile'),
                    trailing: Icon(Icons.check),
                  ),
                );
              },
              child: const Text('snackbar'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.defaultDialog(
                  title: 'Home Page Alert Default Dialog',
                  middleText: 'Confirm your order',
                  textConfirm: 'Yes',
                  textCancel: 'No',
                  confirmTextColor: Colors.green,
                  cancelTextColor: Colors.red,
                  buttonColor: Colors.white,
                  // confirm: Text('Yes'),
                  // cancel: Text('Cancel'),
                );
              },
              child: Text('Default Dialog Box'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.bottomSheet(
                  Wrap(
                    children: [
                      ListTile(
                        leading: const Icon(Icons.wb_incandescent),
                        title: const Text('Light Theme'),
                        onTap: () {
                          Get.changeTheme(
                            ThemeData.light(),
                          );
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.wb_incandescent_outlined),
                        title: const Text('Dark Theme'),
                        onTap: () {
                          Get.changeTheme(
                            ThemeData.dark(),
                          );
                        },
                      )
                    ],
                  ),
                );
              },
              child: const Text('Bottom Sheet'),
            ),
          ],
        ),
      ),
    );
  }
}
