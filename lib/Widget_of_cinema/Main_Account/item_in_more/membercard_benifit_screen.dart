import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MemberADV extends StatelessWidget {
  const MemberADV({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Legend Member",
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
      body: const Padding(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Member Benefits",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            SizedBox(height: 15),
            Text(
              "Getting many benefit from our card membership. Take one now at your nearby legend Cinema! ",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey),
            ),
            MyBenefitItem(),
            MyBenefitItem(),

          ],
        ),
      ),
    );
  }
}
class MyBenefitItem extends StatelessWidget {
  const MyBenefitItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Container(
        width: double.infinity,
        height: 140,
        decoration: BoxDecoration(
          color: Colors.red[900],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            ClipRRect(
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    topLeft: Radius.circular(10)),
                child: Image.network(
                    "https://pbs.twimg.com/media/ECdxbGIVAAMp3OG.jpg")),
            const Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "5% Bunus On Top up ",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                        width: 200,
                      ),
                      Icon(Icons.arrow_forward_rounded),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

