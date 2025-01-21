import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'item_in_more/activate_card_screen.dart';
import 'item_in_more/membercard_benifit_screen.dart';
class MemberCard extends StatelessWidget {
  const MemberCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Container(
            width: 380,
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey[850],
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Legend Membership",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Getting many benefit from our membership card.',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                  const Text(
                    'Take one now at your nearby Legend Cinema! ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 25),
                  Row(
                    children: [
                      SizedBox(
                        height: 40,
                        width: 120,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              backgroundColor: Colors.red[800],
                            ),
                            onPressed: () {
                              Get.to(const activate());
                            },
                            child: const Text('Activate')),
                      ),
                      const SizedBox(width: 10),
                      SizedBox(
                        height: 40,
                        width: 140,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              side: const BorderSide(color: Colors.white),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              backgroundColor: Colors.black12,
                            ),
                            onPressed: () {
                              Get.to(const MemberADV());
                            },
                            child: const Text('Learn More')),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            right: 0,
            child: Image.network(
              "https://images.vexels.com/media/users/3/273182/isolated/preview/fdd195d0f52b5fafb072321c085dd7fb-cute-gift-icon.png",
              height: 100,
            ),
          )
        ],
      ),
    );
  }
}
