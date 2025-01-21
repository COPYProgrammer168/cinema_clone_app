import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContactUS extends StatelessWidget {
  const ContactUS({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Contact us",
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
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Contact Info',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey),
            ),
          ),
          SizedBox(height: 8),
          ItemContact(
            name: "097 266 1622",
            logo: "https://cdn-icons-png.flaticon.com/512/3870/3870799.png",
          ),
          ItemContact(
            name: "Messenger",
            logo:
                "https://static-00.iconduck.com/assets.00/mail-icon-2048x2048-525ey8hu.png",
          ),
          ItemContact(
            name: "Info@legend_google.com",
            logo:
                "https://static-00.iconduck.com/assets.00/google-icon-2048x2048-czn3g8x8.png",
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Advertising & Partnership',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey),
            ),
          ),
          SizedBox(height: 8),
          ItemContact(
            name: "097 266 1622",
            logo: "https://cdn-icons-png.flaticon.com/512/3870/3870799.png",
          ),
          ItemContact(
            name: "Maketing...22.com.kh",
            logo:
                "https://static-00.iconduck.com/assets.00/mail-icon-2048x2048-525ey8hu.png",
          ),
        ],
      ),
    );
  }
}

class ItemContact extends StatelessWidget {
  const ItemContact({super.key, required this.logo, required this.name});
  final String logo;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 7),
      child: SizedBox(
        width: double.infinity,
        height: 60,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black38,
              side: const BorderSide(
                strokeAlign: 15,
                color: Colors.grey,
                width: 1.0, // Adjust the width as needed
              ),
            ),
            onPressed: () {},
            child: Row(
              children: [
                Image.network(
                  logo,
                  height: 35,
                ),
                const SizedBox(width: 20),
                Text(
                  name,
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
