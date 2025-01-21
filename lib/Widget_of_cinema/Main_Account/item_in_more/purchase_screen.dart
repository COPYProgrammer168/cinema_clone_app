import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Purchase extends StatelessWidget {
  const Purchase({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: const Text(
            "Purchase ",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          leading: IconButton(
            onPressed: () => Get.back(),
            icon: const Icon(
              Icons.arrow_circle_left_outlined,
              size: 40,
            ),
          ),
          bottom: const TabBar(
            indicatorColor: Colors.red,
            // overlayColor: MaterialStatePropertyAll(Colors.red),

            tabs: [
              Tab(
                  child: Text(
                'UpComing',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              )),
              Tab(
                  child: Text(
                'History',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              )),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                    "https://cinecon.org/wp-content/uploads/2022/05/Cinecon_Tickets-1.png",
                    height: 150,
                  ),
                  const Text(
                    'No Upcoming Tickets',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                    "https://cinecon.org/wp-content/uploads/2022/05/Cinecon_Tickets-1.png",
                    height: 150,
                  ),
                  const Text(
                    'No Tickets History',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
