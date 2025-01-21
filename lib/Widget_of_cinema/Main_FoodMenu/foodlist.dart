import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyFoodList extends StatelessWidget {
  const MyFoodList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(
            Icons.arrow_circle_left_outlined,
            size: 40,
          ),
        ),
        title: const Text(
          'F&B',
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/images/food.jpeg'),
            SizedBox(
              height: 600,
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 9, horizontal: 5),
                    child: Container(
                      height: 100,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[800],
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Center(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network(
                                "https://foodbuzz.site/api/v1/files/56FA2569-C995-47BB-A4CA-51D1B17891AD",
                                height: 90,
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "Combo 1",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22),
                                ),
                                Text(
                                  "\$ 5.00",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.red[800],
                                      fontSize: 20),
                                ),
                              ],
                            ),
                          ),
                          const Spacer(),
                          const Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 10),
                            child: Icon(
                              Icons.add_circle,
                              color: Colors.red,
                              size: 30,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 80,
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            children: [
              const Icon(
                Icons.money,
                size: 50,
              ),
              const SizedBox(width: 30),
              const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Sumary',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 7),
                  Text(
                    "\$ 0.00",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              const Icon(
                Icons.keyboard_arrow_down,
                size: 40,
              ),
              const Spacer(),
              SizedBox(
                height: 50,
                width: 120,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25))),
                    onPressed: () {},
                    child: const Text('Continue')),
              )
            ],
          ),
        ),
      ),
    );
  }
}
