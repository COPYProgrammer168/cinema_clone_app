import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controler/MovieController.dart';

class PopularWidget extends StatelessWidget {
  PopularWidget({super.key});
  final MovieController _movieController = Get.put(MovieController());
  final UrlHoseImage = "https://image.tmdb.org/t/p/w500";
  @override
  Widget build(BuildContext context) {
    return SizedBox(
     // height: 4000,
      child: GetBuilder<MovieController>(
        builder: (_) {
          return GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // Number of columns in the grid
              crossAxisSpacing: 3,
              mainAxisSpacing: 5,
              mainAxisExtent: 380,
            ),
            itemCount: _movieController.movies.results?.length ?? 0,
            itemBuilder: (context, index) {
              var movie = _movieController.movies.results![index];
              return Card(
                color: Colors.black12,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.network(
                      UrlHoseImage + movie.posterPath.toString(),
                      height: 300,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(height: 8.0),
                    Text(
                      movie.releaseDate ?? '',
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      movie.originalTitle ?? '',
                      maxLines: 1,
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
