import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewsActivity  extends StatelessWidget {
  const NewsActivity ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "New and Activity",
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network("https://www.pngkey.com/png/full/362-3624823_grade-sad-cartoon-boy-png.png",height: 300,),
            const Text("No data for you....!",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),)
          ],
        ),
      ),
    );
  }
}
