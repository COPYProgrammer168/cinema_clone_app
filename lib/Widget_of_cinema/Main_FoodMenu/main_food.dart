import 'package:cinema_clone_app/Widget_of_cinema/Main_FoodMenu/foodlist.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainFood extends StatelessWidget {
  const MainFood({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Food Menu',
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
            Image.asset('assets/images/food.jpeg'),
            const Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Text(
                    'Choose Cinema',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () => Get.to(const MyFoodList()),
              child: const LocationFood(
                imageCinema:
                    "https://steungmeanchey.com/wp-content/uploads/2017/07/Chatime-1.jpg",
                nameCinema: "Meanchey",
              ),
            ),
            GestureDetector(
              onTap: () => Get.to(const MyFoodList()),
              child: const LocationFood(
                imageCinema:
                    "https://tickets.legend.com.kh/CDN/media/entity/get/CinemaGallery/0000000013",
                nameCinema: "K Mall",
              ),
            ),
            GestureDetector(
              onTap: () => Get.to(const MyFoodList()),
              child: const LocationFood(
                imageCinema:
                    "https://tickets.legend.com.kh/CDN/media/entity/get/CinemaGallery/0000000008",
                nameCinema: "Midtown Mall",
              ),
            ),
            GestureDetector(
              onTap: () => Get.to(const MyFoodList()),
              child: const LocationFood(
                imageCinema:
                    "https://tickets.legend.com.kh/CDN/media/entity/get/CinemaGallery/0000000010",
                nameCinema: "City Mall",
              ),
            ),
            GestureDetector(
              onTap: () => Get.to(const MyFoodList()),
              child: const LocationFood(
                imageCinema:
                    "https://tickets.legend.com.kh/CDN/media/entity/get/CinemaGallery/0000000012",
                nameCinema: "Olampia",
              ),
            ),
            GestureDetector(
              onTap: () => Get.to(const MyFoodList()),
              child: const LocationFood(
                imageCinema:
                    "https://tickets.legend.com.kh/CDN/media/entity/get/CinemaGallery/0000000012",
                nameCinema: "Toul kork",
              ),
            ),
            GestureDetector(
              onTap: () => Get.to(const MyFoodList()),
              child: const LocationFood(
                imageCinema:
                    "https://tickets.legend.com.kh/CDN/media/entity/get/CinemaGallery/0000000001",
                nameCinema: "Sensok",
              ),
            ),
            GestureDetector(
              onTap: () => Get.to(const MyFoodList()),
              child: const LocationFood(
                imageCinema:
                    "https://tickets.legend.com.kh/CDN/media/entity/get/CinemaGallery/0000000014",
                nameCinema: "Eden Garden",
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LocationFood extends StatelessWidget {
  const LocationFood(
      {super.key, required this.nameCinema, required this.imageCinema});
  final String nameCinema;
  final String imageCinema;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 9, horizontal: 5),
      child: Card(
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(5),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  imageCinema,
                  width: 120,
                  height: 80,
                ),
              ),
            ),
            Text(
              "Legend Cinema $nameCinema",
              // "Legend Cinema 271 Mega Mall",
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const Spacer(),
            const Icon(Icons.arrow_forward_ios_outlined),
            const SizedBox(width: 10),
          ],
        ),
      ),
    );
  }
}