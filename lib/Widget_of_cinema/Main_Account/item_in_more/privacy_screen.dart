import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Privacy extends StatelessWidget {
  const Privacy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Privacy",
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
      body:  const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
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
              "Vista Entertainment built the Legend Cinema app as a Free app. This SERVICE is provided by Vista Entertainment at no cost and is intended for use as is.",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal,color: Colors.grey),
              ),
              SizedBox(height: 20),
              Text(
                "This page is used to inform visitors regarding our policies with the collection, use, and disclosure of Personal Information if anyone decided to use our Service.",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal,color: Colors.grey),
              ),
              SizedBox(height: 20),
              Text(
                "If you choose to use our Service, then you agree to the collection and use of information in relation to this policy. The Personal Information that we collect is used for providing and improving the Service. We will not use or share your information with anyone except as described in this Privacy Policy.",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal,color: Colors.grey),
              ),
              SizedBox(height: 20),
              Text(
                "The terms used in this Privacy Policy have the same meanings as in our Terms and Conditions, which is accessible at Legend Cinema unless otherwise defined in this Privacy Policy.",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal,color: Colors.grey),
              ),
              SizedBox(height: 20),
              Text(
                'Log Data',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Text(
                "We want to inform you that whenever you use our Service, in a case of an error in the app we collect data and information (through third party products) on your phone called Log Data. This Log Data may include information such as your device Internet Protocol ('IP') address, device name, operating system version, the configuration of the app when utilizing our Service, the time and date of your use of the Service, and other statistics.",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal,color: Colors.grey),
              ),
              SizedBox(height: 20),

              Text(
                'Cookies',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Cookies are files with a small amount of data that are commonly used as anonymous unique identifiers. These are sent to your browser from the websites that you visit and are stored on your device's internal memory.",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal,color: Colors.grey),
              ),
              Text(
                "This Service does not use these 'cookies' explicitly.However, the app may use third party code and libraries that use 'cookies to collect information and improve their services. You have the option to either accept or refuse these cookies and know when a cookie is being sent to your device. If you choose to refuse our cookies, you may not be able to use some portions of this Service.",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal,color: Colors.grey),
              ),
              SizedBox(height: 20),
              Text(
                'Security',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),

              ),
              SizedBox(height: 20),
              Text(
                "We value your trust in providing us your Personal Information, thus we are striving to use commercially acceptable means of protecting it. But remember that no method of transmission over the internet, or method of electronic storage is 100% secure and reliable, and we cannot guarantee its absolute security.",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal,color: Colors.grey),
              ),
              SizedBox(height: 20),
              Text(
                'Link to another site',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),

              ),
              SizedBox(height: 20),
              Text(
                "This Service may contain links to other sites. If you click on a third-party link, you will be directed to that site. Note that these external sites are not operated by us. Therefore, we strongly advise you to review the Privacy Policy of these websites. We have no control over and assume no responsibility for the content, privacy policies, or practices of any third-party sites or services.",
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
