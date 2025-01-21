import 'package:flutter/material.dart';
class ExploreBtn extends StatelessWidget {
  const ExploreBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return    SizedBox(

      width: double.infinity,
      child: Stack(
        children: [
          Image.network(
              "https://www.legendgroup.in/lgimg/goldentalkies.jpg",fit: BoxFit.fill,), // Move this line up

          Positioned(
            top: 100,
            left: 0,
            right: 0,
            child: Column(
              children: [
                const Text(
                  'Want to watch your favourite movie at nearby cinema ?',
                  style: TextStyle(fontSize: 16),
                ),
                const Text(
                  'Explore now to see more cinema around you ',
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 15),
                SizedBox(
                  height: 50,
                  width: 160,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      "Explore more ",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
