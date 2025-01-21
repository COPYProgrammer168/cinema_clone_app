import 'package:flutter/material.dart';

class Item extends StatelessWidget {
  const Item({Key? key, required this.title, required this.icon})
      : super(key: key);

  final String title;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 65,
      color: Colors.grey[900],
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.grey[800],
              radius: 26,
              child:  Icon(
                icon.icon,
                color: Colors.red[800],
                size: 30.0,
              ),
            ),
            const SizedBox(width: 15),
            Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.grey,
              ),
            ),
            const Spacer(),
            const Icon(Icons.arrow_forward_ios_outlined),
          ],
        ),
      ),
    );
  }
}
