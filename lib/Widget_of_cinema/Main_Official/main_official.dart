import 'package:flutter/material.dart';

import 'offer_card_menu.dart';
import 'premium_benefit.dart';

class MainOfficial extends StatelessWidget {
  const MainOfficial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Offers',
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 123, 27, 20),
                Colors.transparent,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/images/offer.png'),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 2),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "what's we offer",
                          style: TextStyle(fontSize: 23),
                        ),
                      ],
                    ),
                  ),
                  offerMenuCard(),
                  SizedBox(height: 20),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Premium benefits",
                          style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  premuimcard(),
                  SizedBox(height: 25),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}