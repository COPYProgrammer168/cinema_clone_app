import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Item_seeting.dart';
import 'Item_title.dart';
import 'item_in_more/Changetheme.dart';
import 'item_in_more/about_us_screen.dart';
import 'item_in_more/change_password_screen.dart';
import 'item_in_more/contact_us_screen.dart';
import 'item_in_more/language_screen.dart';
import 'item_in_more/motification_screen.dart';
import 'item_in_more/new_and_activity_screen.dart';
import 'item_in_more/privacy_screen.dart';
import 'item_in_more/purchase_screen.dart';
import 'item_in_more/term_condition.dart';
import 'item_in_more/update_account_profile.dart';
import 'membership_card.dart';

class MainAccount extends StatelessWidget {
  const MainAccount({super.key});

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text(
          "Account",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
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
        actions: [
          GestureDetector(
            onTap: ()=>Get.to(const UpdateAccount()),
            child: CircleAvatar(

              backgroundColor: Colors.white,
              child: Icon(
                Icons.person,
                color: Colors.red[800],
              ),
            ),
          ),
          const SizedBox(width: 10),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            const MemberCard(),
            const ItemTittle(
              name: "Tickets",
            ),
            GestureDetector(
              onTap: () => Get.to(const Purchase()),
              child: const Item(
                icon: Icon(
                  CupertinoIcons.tickets_fill,
                ),
                title: "Puchase",
              ),
            ),
            const ItemTittle(
              name: "Change Theme",
            ),
            GestureDetector(
              onTap: () => Get.to(const Changetheme()),
              child: Item(title: "Change Theme", icon: Icon(Icons.dark_mode_outlined)),
            ),
            const ItemTittle(
              name: "Languages",
            ),
            GestureDetector(
              onTap: () => Get.to(const language()),
              child: const Item(
                icon: Icon(CupertinoIcons.pencil_circle_fill),
                title: "English",
              ),
            ),
            const ItemTittle(
              name: "Account",
            ),
            GestureDetector(
              onTap: () => Get.to(const Changepassword()),
              child: const Item(
                icon: Icon(CupertinoIcons.person_alt),
                title: "Change Password",
              ),
            ),
            const ItemTittle(
              name: "What's new?",
            ),
            GestureDetector(
              onTap: () => Get.to(const NewsActivity()),
              child: const Item(
                icon: Icon(CupertinoIcons.news),
                title: "New & Activity ",
              ),
            ),
            const ItemTittle(
              name: "Notification",
            ),
            GestureDetector(
              onTap: () => Get.to(const Notification_off_on()),
              child: const Item(
                icon: Icon(CupertinoIcons.bell_fill),
                title: "Notification",
              ),
            ),
            const ItemTittle(
              name: "About us",
            ),
            GestureDetector(
              onTap: () => Get.to(const AboutUS()),
              child: const Item(
                icon: Icon(CupertinoIcons.person_2_square_stack_fill),
                title: "About us",
              ),
            ),
            GestureDetector(
              onTap: () => Get.to(const ContactUS()),
              child: const Item(
                icon: Icon(CupertinoIcons.phone_down_fill),
                title: "Contact us ",
              ),
            ),
            GestureDetector(
              onTap: () => Get.to(const Privacy()),
              child: const Item(
                icon: Icon(CupertinoIcons.person_crop_square_fill),
                title: "Privacy Policy",
              ),
            ),
            GestureDetector(
               onTap: () => Get.to(const TermCondition()),
              child: const Item(
                icon: Icon(CupertinoIcons.list_bullet),
                title: "Term Condition",
              ),
            ),
            const Item(
              icon: Icon(CupertinoIcons.arrow_right_arrow_left_circle),
              title: "Logout",
            ),
          ],
        ),
      ),
    );
  }
}