import 'package:flutter/material.dart';
import 'package:get/get.dart';


class language extends StatelessWidget {
  const language({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Language",
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
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Languages',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey),
            ),
            const ItemLanguage(
              imageCountry: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTb7qTUgQ9yFAmE0EwA8djKdb0qz9q-UhmbEbGu8S-LaP7qPcgCDEsMAchK4c1X69Udoxs&usqp=CAU',
              language: 'English',
              isSelected: Icon(Icons.check),
            ),
            Center(child: Container(width: 300, height: 1, color: Colors.grey)),
            const ItemLanguage(
               imageCountry:"https://cdn.britannica.com/27/4027-050-973CC0B1/Flag-Cambodia.jpg" ,
              language: 'Khmer',
            ),
            Center(child: Container(width: 300, height: 1, color: Colors.grey)),
            const ItemLanguage(
              imageCountry: 'https://cdn.britannica.com/90/7490-050-5D33348F/Flag-China.jpg',
              language: 'Chinese',
            ),
            //Center(child: Container(width: 300, height: 1, color: Colors.grey)),
          ],
        ),
      ),
    );
  }
}

//================================ code card
class ItemLanguage extends StatelessWidget {
  const ItemLanguage({
    super.key,
    required this.language,
    required this.imageCountry,
    this.isSelected, // Default is null
  });
  final String language;
  final String imageCountry;
  final Icon? isSelected;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Row(
        children: [
          CircleAvatar(
            radius: 25,
            backgroundColor: Colors.blueAccent,
            backgroundImage: NetworkImage(imageCountry),
          ),
          const SizedBox(width: 20),
          Text(
            language,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const Spacer(),
          if (isSelected != null) isSelected!,
        ],
      ),
    );
  }
}
