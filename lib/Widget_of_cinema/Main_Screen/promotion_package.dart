import 'package:flutter/material.dart';

class Promotion extends StatelessWidget {
  const Promotion({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 230,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              width: 320,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Image.network("https://coolbeans-dev.sgp1.digitaloceanspaces.com/legend-cinema-staging/0dd6ed1b-14da-4562-8320-9845a31f7fd2.jpeg"),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Every Monday Buy 1 Get 1 ticket free via Membership Card",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black),),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
