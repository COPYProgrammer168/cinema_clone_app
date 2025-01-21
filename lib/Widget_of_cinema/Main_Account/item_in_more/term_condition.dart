import 'package:flutter/material.dart';
import 'package:get/get.dart';
class TermCondition extends StatelessWidget {
  const TermCondition({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(
            Icons.arrow_circle_left_outlined,
            size: 40,
          ),
        ),
      ),
      body:const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Text(
                'Privacy Policy',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Text(
                'Ticket Purchase Rule and Regulation',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Text(
                "Every movie tickets purchased via the Sale Channels are strictly non-refundable and are not available for exchange under whatever circumstances.",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal,color: Colors.grey),
              ),
              SizedBox(height: 20),
              Text(
                "Purchased tickets are not exchangeable for tickets at a different price, for another movie, or for another screening or day.",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal,color: Colors.grey),
              ),
              SizedBox(height: 20),
              Text(
                "Movie tickets purchased via the Sales Channels will be available for collection at the relevant cinema from the ticket counter or at our KIOSK machine (where available) by producing the booking numbers/reservation sent by email or as available under the purchased history feature in Legend Mobile application or any other means that shall be introduced by Legend Cinema from time to time.",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal,color: Colors.grey),
              ),
              SizedBox(height: 20),
              Text(
                "In case of any malfunctions of the reservation or purchase form placed on the website or mobile application, please contact us immediately at the following e-mail address hotline@legend.com.kh or contact our hotline 081300400. We would also like to inform you that it is the basis and condition for an effective complaint about the impossibility or difficulties in purchasing tickets online.",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal,color: Colors.grey),
              ),
              SizedBox(height: 20),
              Text(
                "If the User fails to purchase a ticket for the screening for which he or she has reserved a seat in the Legend Cinema within the time limit specified in clause 4 above, the reservation of such a seat cannot be guaranteed.",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal,color: Colors.grey),
              ),
              SizedBox(height: 20),
              Text(
                "Movie tickets are made available subject to the classification of relevant film given by the Film Censorship Board of Cambodia. Legend Cinema has a legal obligation to refuse admission to a person, who in the opinion of its duty manager, is under the minimum age required for NC15 and R18 classified films (including children in arms). Proof of age may be required in certain instances.",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal,color: Colors.grey),
              ),
              SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
