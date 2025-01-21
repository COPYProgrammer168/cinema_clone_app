import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UpdateAccount extends StatelessWidget {
  const UpdateAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Profile",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(
            Icons.arrow_circle_left_outlined,
            size: 40,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text(
              "Save",
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 18, color: Colors.red),
            ),
          )
        ],
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: BroweImage()),
              Text(
                "Personal Information",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              MyTextFeild(
                function: "First Name",
                preicon: Icon(Icons.person),
              ),
              MyTextFeild(
                function: "Last Name",
                preicon: Icon(Icons.person),
              ),
              MyTextFeild(
                function: "Username",
                preicon: Icon(Icons.camera),
              ),
              MyTextFeild(
                function: "Date of birth",
                preicon: Icon(Icons.cleaning_services),
              ),
              Text(
                "Contact Information",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              MyTextFeild(
                function: "Email Address",
                preicon: Icon(Icons.person),
              ),
              MyTextFeild(
                function: "Phone Number",
                preicon: Icon(
                  Icons.phone,
                  color: Colors.red,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class BroweImage extends StatelessWidget {
  const BroweImage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        color: Colors.transparent,
        width: 150,
        height: 150,
        child: const Center(
          child: Column(
            children: [
              Stack(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://hips.hearstapps.com/hmg-prod/images/gettyimages-1229892983-square.jpg"),
                    radius: 55,
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: CircleAvatar(
                      backgroundColor: Colors.grey,
                      child: Icon(Icons.camera_alt),
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.all(2),
                child: Text(
                  "Set New Profile Picture",
                  style: TextStyle(fontSize: 14, color: Colors.red),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
class MyTextFeild extends StatelessWidget {
  const MyTextFeild({super.key, required this.function, required this.preicon});
  final String function;
  final Icon preicon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: SizedBox(
        width: 400,
        child: TextField(
          obscureText: true,
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            labelText: function,
            prefixIcon: preicon,
          ),
        ),
      ),
    );
  }
}
