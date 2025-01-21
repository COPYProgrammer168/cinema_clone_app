import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:auto_scroll_text/auto_scroll_text.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:cinema_clone_app/Widget_of_cinema/Main_Account/item_in_more/Changetheme.dart';
import 'package:cinema_clone_app/Widget_of_cinema/Main_Screen/detail_movie.dart';
import 'package:cinema_clone_app/Widget_of_cinema/Main_Screen/listcinema.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:toggle_switch/toggle_switch.dart';
import '../../login_screen/login_screen.dart';
import 'detail_screen.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Image(
          image: AssetImage('assets/images/logo.png'),
          alignment: Alignment.center,
          height: 100,
          width: 100,
        ),
        centerTitle: true,
        // backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 123, 27, 20),
                Colors.transparent,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {},
          ),
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => LoginScreen(),
                ),
              );
            },
            icon: Icon(CupertinoIcons.person_alt),
          ),
        ],
      ),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      children: [
        _buildSlideImage(context),
        _buildTextScroll(),
        _buildToggle(),
        _buildDate(),
        Text(
          "All Showing",
          style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
        ),
        _buildGridImage(),
        Text(
          "Promotion Ticket",
          style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
        ),
        _buildPromtion(),
      ],
    );
  }

  Widget _buildTextScroll() {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
            AutoScrollText(
            "សូមស្វាគមន៏មកកាន់ Legend Cinema ​។​​ សូមស្វាគមន៏មកកាន់ Legend Cinema ។​",
            style: TextStyle(
              fontFamily: "Toathmor Friday",
              fontSize: 20,
              color: Colors.white),
            ),
        ],
      ),
    );
  }

  Widget _buildGridImage() {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.all(10),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 4 / 6,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
      ),
      itemCount: movieList.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          child: InkWell(
            onTap: () {
              Navigator.of(context).push(
                // MaterialPageRoute(
                //   // builder: (context) => DetailScreen(imageList[index]),
                //   builder: (context) => DetailMovie(movieList[index]),
                // ),
                CupertinoPageRoute(
                  builder: (context) => DetailScreen(movieList[index]),
                  fullscreenDialog: true,
                ),
              );
            },
            // child: Expanded(child: _buildGridItem(imageList[index])
            child: Column(
              children: [
                Expanded(
                  child: Image.network(
                    movieList[index].image,
                    fit: BoxFit.cover,
                    width: double.maxFinite,
                  ),
                ),
                Text(
                  "${movieList[index].title}",
                  style: TextStyle(
                      color: Colors.white, fontFamily: "KbeungThom-Regular"),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildSlideImage(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.grey.shade800,
                borderRadius: BorderRadius.circular(8),
                // border: Border.all(color: Colors.grey),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      _buttonSheet(context);
                    },
                    child: Text(
                      'All Cinemas',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Icon(Icons.arrow_drop_down_outlined, color: Colors.white),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              child: SizedBox(
                height: 450,
                width: double.infinity,
                child: CarouselSlider(
                  items: [
                    Stack(
                      children: [
                        Image.asset('assets/banner/b1.jpg', fit: BoxFit.cover),
                        Positioned(
                          bottom: 10,
                          left: 10,
                          child: Text(
                            'អឹចន ម៉ែដោះ',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontFamily: "KbeungThom-Regular",
                            ),
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        Image.asset('assets/banner/b2.jpg', fit: BoxFit.cover),
                        Positioned(
                          bottom: 10,
                          left: 10,
                          child: Text(
                            'លោកតា​​ ​២១',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontFamily: "KbeungThom-Regular",
                            ),
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        Image.asset('assets/banner/b3.jpg', fit: BoxFit.cover),
                        Positioned(
                          bottom: 10,
                          left: 10,
                          child: Text(
                            'កណ្ដាប់ដៃ ស្នងជំនាន់',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontFamily: "KbeungThom-Regular",
                            ),
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        Image.asset('assets/banner/b4.jpg', fit: BoxFit.cover),
                        Positioned(
                          bottom: 10,
                          left: 10,
                          child: Text(
                            'តំណាលតែងតាំងទេវតា​ ២',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontFamily: "KbeungThom-Regular",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                  options: CarouselOptions(
                    height: 500,
                    aspectRatio: 16 / 9,
                    viewportFraction: 0.8,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 3),
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future _buttonSheet(BuildContext context) {
    return showModalBottomSheet(
        context: context,
        backgroundColor: Colors.grey.shade900,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(50))),
        builder: (context) => Container(
              height: 400,
              child: ListView.builder(
                  itemCount: cinemas.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: Icon(
                        Icons.location_on,
                        color: Colors.red,
                      ),
                      title: Text(
                        cinemas[index],
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                      },
                      tileColor: Colors.grey.shade900,
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    );
                  }),
            ));
  }

  Widget _buildToggle() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.grey.shade800,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ToggleSwitch(
                    minWidth: 180,
                    cornerRadius: 50,
                    activeBgColors: [
                      [Colors.red[500]!],
                      [Colors.red[500]!],
                    ],
                    activeFgColor: Colors.white,
                    inactiveBgColor: Colors.grey.shade800,
                    inactiveFgColor: Colors.white,
                    initialLabelIndex: 1,
                    totalSwitches: 2,
                    labels: const ['Now Showing', 'Coming Soon'],
                    radiusStyle: true,
                    onToggle: (index) {
                      print('switched to: $index');
                    },
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildPromtion() {
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
                        "  Discount 10% Ticket ",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "  10% discount on Ticket ",
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

  int selectedIndex = 0; // Index for the selected date

  Widget _buildDate() {
    List<String> dates = ['Today', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(dates.length, (index) {
        return GestureDetector(
          onTap: () {
            selectedIndex = index;
            print('Selected: ${dates[index]}');
            },
            child: Container(
            margin: EdgeInsets.all(5),
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: selectedIndex == index ? Colors.red : Colors.grey[850],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              dates[index],
              style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              ),
            ),
            ),
          );
      }),
    );
  }
}
