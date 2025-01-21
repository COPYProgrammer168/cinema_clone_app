import 'package:flutter/material.dart';
import 'package:get/get.dart';

class activate extends StatelessWidget {
  const activate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: const Text(
            "Activate Card",
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
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Card Activation',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Enter your card number',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons
                      .credit_card_rounded), // Use Icon widget for prefixIcon
                ),
              ),
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red[800],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)
                  )
                ),
                onPressed: () {},
                child: const Text("Activate Card",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
              ),
            )
          ],
        ));
  }
}
