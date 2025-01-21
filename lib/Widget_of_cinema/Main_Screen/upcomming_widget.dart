import 'package:flutter/material.dart';
class MyUpComing extends StatelessWidget {
  const MyUpComing({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                width: 140,
                height: 180,
                color: Colors.yellow,
              ),
            ),
          );
        },
      ),
    );
  }
}
