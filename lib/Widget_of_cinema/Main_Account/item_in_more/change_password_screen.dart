import 'package:flutter/material.dart';
import 'package:get/get.dart';


class Changepassword extends StatelessWidget {
  const Changepassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Change Password",
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
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Change Password ',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.grey,
              ),
            ),
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
                hintText: 'Enter your email',
                border: OutlineInputBorder(),
                suffixIcon: Icon(Icons.remove_red_eye),
                prefixIcon: Icon(Icons.lock), // Use Icon widget for prefixIcon
              ),
            ),
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
                hintText: 'Enter your password',
                border: OutlineInputBorder(),
                suffixIcon: Icon(Icons.remove_red_eye),
                prefixIcon: Icon(Icons.lock), // Use Icon widget for prefixIcon
              ),
            ),
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
                hintText: 'Confirm your password ',
                border: OutlineInputBorder(),
                suffixIcon: Icon(Icons.remove_red_eye),
                prefixIcon: Icon(Icons.lock), // Use Icon widget for prefixIcon
              ),
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.end, children: [
            TextButton(onPressed: () {}, child: const Text("Forget Password "))
          ]),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 300,
                height: 60,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red[800],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      textStyle: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold)),
                  onPressed: () {},
                  child: const Text(
                    "Upload new data ",
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
