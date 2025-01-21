import 'package:flutter/material.dart';

class SoonMovie extends StatelessWidget {
  const SoonMovie({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: double.infinity,
        height: 65,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.grey,
        ),
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 190,
                height: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.red[800],
                ),
                child: const Center(
                  child: Text(
                    "Now Showing",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                width: 190,
                height: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                ),
                child: const Center(
                  child: Text(
                    "Coming Soon",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
