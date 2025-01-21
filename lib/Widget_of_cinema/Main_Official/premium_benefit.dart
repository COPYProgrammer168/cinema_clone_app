import 'package:flutter/material.dart';

class premuimcard extends StatelessWidget {
  const premuimcard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (context, index) {
          return Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(5),
                child: Container(
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.red[900],
                  ),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10),
                      Text(
                        "  Discount 10% Concession ",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "  10% discount on concession ",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                  bottom: 0,
                  right: 20,
                  child: Image.network(
                 "https://hintonmovies.com/wp-content/uploads/2022/02/logo.png",
                    width: 130,
                    height: 100,
                  )),
            ],
          );
        },
      ),
    );
  }
}
