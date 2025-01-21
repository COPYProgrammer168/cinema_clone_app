import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:toggle_switch/toggle_switch.dart';

class Notification_off_on extends StatelessWidget {
  const Notification_off_on({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Notification",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(
            Icons.arrow_circle_left_outlined,
            size: 40,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.grey[850],
                  border: Border.all(color: Colors.white, width: 2)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Turn on Notification',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                    ToggleSwitch(
                      minWidth: 50.0,
                      cornerRadius: 20.0,
                      activeBgColors: [
                        [Colors.red[800]!],
                        [Colors.green[800]!],
                      ],
                      activeFgColor: Colors.white,
                      inactiveBgColor: Colors.grey,
                      inactiveFgColor: Colors.white,
                      initialLabelIndex: 1,
                      totalSwitches: 2,
                      labels: const ['OFF', 'On'],
                      radiusStyle: true,
                      onToggle: (index) {
                        print('switched to: $index');
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
