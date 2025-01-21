import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controler/MovieController.dart';

class TrendingMovie extends StatelessWidget {
  TrendingMovie({Key? key}) : super(key: key);

  final MovieController _movieController = Get.put(MovieController());
  final UrlHoseImage = "https://image.tmdb.org/t/p/w500";

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 450,
      width: double.infinity,
      child: GetBuilder<MovieController>(
        builder: (_) {
          return CarouselSlider.builder(
            itemCount: _movieController.movies.results?.length ?? 0,
            options: CarouselOptions(
              height: 450,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 3),
              enlargeCenterPage: true,
              viewportFraction: 0.85,
              aspectRatio: 16 / 9,
            ),
            itemBuilder: (context, index, realIndex) {
              var movie = _movieController.movies.results![index];
              return Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                        image: NetworkImage(
                            UrlHoseImage + movie.posterPath.toString()),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      width: 140,
                      height: 30,
                      decoration: const BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              topLeft: Radius.circular(20))),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Buy NOW",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                            maxLines: 1,
                          ),
                          Icon(Icons.airplane_ticket)
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    child: Container(
                      width: 140,
                      height: 30,
                      decoration: const BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(20),
                              topRight: Radius.circular(20))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            movie.releaseDate.toString(),
                            style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                            maxLines: 1,
                          ),
                          const Icon(Icons.calendar_view_day_outlined)
                        ],
                      ),
                    ),
                  )
                ],
              );
            },
          );
        },
      ),
    );
  }
}
