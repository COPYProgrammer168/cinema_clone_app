import 'package:flutter/material.dart';
import 'package:get/get.dart';


class AboutUS extends StatelessWidget {
  const AboutUS({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "",
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
                "https://coolbeans.sgp1.digitaloceanspaces.com/legend-cinema-prod/33983385-b6fd-4413-a906-98491d180531.jpeg"),
            const SizedBox(height: 25),
            const Text(
              "About Legend Cinema ",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            ),
            const SizedBox(height: 25),
            const Text(
              "About Legend Cinema Cambodia ",
              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 20),
            ),
            const SizedBox(height: 15),
            const Text(
              "Legend Cinema is the no. 1 and the first International Standard Cinema in Cambodia, created and operated by Khmer since 2011. Our rapid growth and expansion from 1 to 13 cinema locations in the past 12 years across the country, has shown our strength in delivery and influence in the film and entertainment industry.",
              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 18),
            ),
            const SizedBox(height: 15),
            const Text(
              " Today, we have successfully implemented and deployed advanced cinema technologies and levelled up our offerings, beyond cinema norms.Our team is dedicated to providing top tier immersive cinema experience and excellent services with the essence of Khmer hospitality.With our new direction in place, we are determined to inspire, drive change and make an impact in the industry, and exceed expectations.",
              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
