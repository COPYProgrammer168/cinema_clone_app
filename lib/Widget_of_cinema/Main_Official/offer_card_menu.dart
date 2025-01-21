import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'buy1_get1_page.dart';

class itemCard {
  final String image;
  final String tittle;
  itemCard({
    required this.image,
    required this.tittle,
  });
}

var listItemCard = [
  itemCard(
    image:
        "https://coolbeans-dev.sgp1.digitaloceanspaces.com/legend-cinema-staging/0dd6ed1b-14da-4562-8320-9845a31f7fd2.jpeg",
    tittle: "Buy 1 Get 1 free",
  ),
  itemCard(
    image:
        "https://coolbeans.sgp1.digitaloceanspaces.com/legend-cinema-prod/24d6768a-5df0-4240-a4ee-f5d6967f5b31.jpeg",
    tittle:
        "ទិញសំបុត្រ \"អំចនម៉ែដោះ \" 2 សំបុត្រនឺងទទួលបាន Tote Bag ដ៏ស្រស់ស្អាតមួយភ្លាមៗ",
  ),
  itemCard(
    image:
        "https://coolbeans.sgp1.digitaloceanspaces.com/legend-cinema-prod/c3341261-3201-4707-8aeb-4900f0c39184.png",
    tittle: "រីករាយជាមួយការបញ្ចេះតម្លៃពិសេសរាល់ការចោះឈ្មោះជាមួយ Smart VIP ",
  ),
  itemCard(
    image:
        "https://coolbeans.sgp1.digitaloceanspaces.com/legend-cinema-prod/1bd6e043-a58e-4eae-9a46-13160e901f74.jpeg",
    tittle: "តោះមក! ទស្សនារឿង អំចនម៉ែដោះ",
  ),
];

class offerMenuCard extends StatelessWidget {
  const offerMenuCard({
    super.key,
  });
  void Movescreen(int index) {
    if (index == 0) {
      Get.to(() => const BuyGet());
    }
    if (index == 1) {
      Get.to(() => const GetTolBage());
    }
    if (index == 2) {
      Get.to(() => const SmartVIP());
    }
    if (index == 3) {
      Get.to(() => const RgMv());
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 970,
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: listItemCard.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Movescreen(index);
            },
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                            listItemCard[index].image,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(height: 5),
                        const SizedBox(width: 15),
                        Text(
                          listItemCard[index].tittle,
                          style: const TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
