import 'package:flutter/material.dart';

class MainCinema extends StatelessWidget {
  const MainCinema({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 150,
        backgroundColor: Colors.transparent,
        elevation: 0,
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
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Cinema",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            TextField(
              obscureText: false,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Search Cinema.....",
                suffixIcon: Icon(
                  Icons.search,
                  size: 35,
                ),
              ),
            ),
          ],
        ),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            MyCinemaGroup(
              name: "271 Mega Mall",
              location: "#rd Floor, Chip Mong Mega Mall",
              picture:
                  "https://steungmeanchey.com/wp-content/uploads/2017/07/Chatime-1.jpg",
            ),
            MyCinemaGroup(
              name: "K Mall",
              location: "3rd Floor, Chip Mong Mega Mall",
              picture:
                  "https://tickets.legend.com.kh/CDN/media/entity/get/CinemaGallery/0000000013",
            ),
            MyCinemaGroup(
              name: "Midtown Mall",
              location: "3rd Floor, Midtown Mall",
              picture:
                  "https://tickets.legend.com.kh/CDN/media/entity/get/CinemaGallery/0000000008",
            ),
            MyCinemaGroup(
              name: "271 Mega Mall",
              location: "#rd Floor, Chip Mong Mega Mall",
              picture:
                  "https://tickets.legend.com.kh/CDN/media/entity/get/CinemaGallery/0000000010",
            ),
            MyCinemaGroup(
              name: "271 Mega Mall",
              location: "#rd Floor, Chip Mong Mega Mall",
              picture:
                  "https://tickets.legend.com.kh/CDN/media/entity/get/CinemaGallery/0000000012",
            ),
            MyCinemaGroup(
              name: "271 Mega Mall",
              location: "#rd Floor, Chip Mong Mega Mall",
              picture:
                  "https://tickets.legend.com.kh/CDN/media/entity/get/CinemaGallery/0000000001",
            ),
          ],
        ),
      ),
    );
  }
}

class MyCinemaGroup extends StatelessWidget {
  const MyCinemaGroup(
      {super.key,
      required this.picture,
      required this.name,
      required this.location});
  final String picture;
  final String name;
  final String location;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Container(
        width: 400,
        height: 300,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            // color: Colors.red,
            border: Border.all(color: Colors.grey)),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                picture,
                height: 200,
                width: 400,
              ),
              const SizedBox(height: 10),
              Text(
                'Legend Cinema $name',
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const SizedBox(height: 7),
              Row(
                children: [
                  const Icon(
                    Icons.location_on,
                    color: Colors.red,
                  ),
                  Text(
                    location,
                    style: const TextStyle(fontSize: 17, color: Colors.grey),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}