import 'package:cinema_clone_app/Widget_of_cinema/Main_Screen/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Main_Cinema/main_cinema.dart';
import 'detail_movie.dart';
import 'listcinema.dart';

class DetailScreen extends StatefulWidget {
  // const DetailScreen({super.key});

  // String image;
  // DetailScreen(this.image);

  DetailMovie movie;
  DetailScreen(this.movie);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(250.0),
        child: AppBar(
          actions: [
            IconButton(
              icon: Icon(
                Icons.share,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
          ],
          flexibleSpace: Stack(
            children: [
              Image.network(
                this.widget.movie.image,
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.black, Colors.transparent],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                ),
              ),
            ],
          ),
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => MainScreen()),
              );
            },
            icon: const Icon(
              Icons.arrow_circle_left_outlined,
              size: 40,
            ),
          ),
        ),
      ),
      backgroundColor: Colors.black,
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return ListView(
      children: [
        _buildDetail(),
        _buildDate(),
        _buildCinema(),
      ],
    );
  }

  Widget _buildCinema() {
    return SingleChildScrollView(
      child: Column(
        children: const [
          MyCinemaGroup(
            name: "271 Mega Mall",
            location: "#rd Floor, Chip Mong Mega Mall",
            picture:
                "https://steungmeanchey.com/wp-content/uploads/2017/07/Chatime-1.jpg",
          ),
          MyCinemaGroup(
            name: "K Mall",
            location: "3rd Floor, Chip Mong Mega Mall",
            picture:
                "https://tickets.legend.com.kh/CDN/media/entity/get/CinemaGallery/0000000013",
          ),
          MyCinemaGroup(
            name: "Midtown Mall",
            location: "3rd Floor, Midtown Mall",
            picture:
                "https://tickets.legend.com.kh/CDN/media/entity/get/CinemaGallery/0000000008",
          ),
          MyCinemaGroup(
            name: "271 Mega Mall",
            location: "#rd Floor, Chip Mong Mega Mall",
            picture:
                "https://tickets.legend.com.kh/CDN/media/entity/get/CinemaGallery/0000000010",
          ),
          MyCinemaGroup(
            name: "271 Mega Mall",
            location: "#rd Floor, Chip Mong Mega Mall",
            picture:
                "https://tickets.legend.com.kh/CDN/media/entity/get/CinemaGallery/0000000012",
          ),
          MyCinemaGroup(
            name: "271 Mega Mall",
            location: "#rd Floor, Chip Mong Mega Mall",
            picture:
                "https://tickets.legend.com.kh/CDN/media/entity/get/CinemaGallery/0000000001",
          ),
        ],
      ),
    );
  }

  Widget _buildDetail() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  Icon(
                    Icons.movie,
                    color: Colors.white,
                    size: 30,
                  ),
                  SizedBox(width: 10),
                  Text(
                    "${this.widget.movie.title}",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontFamily: "KbeungThom-Regular"),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.timelapse_outlined,
                    color: Colors.white,
                    size: 30,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "${this.widget.movie.time}",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontFamily: "KbeungThom-Regular",
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.new_releases_outlined,
                    color: Colors.white,
                    size: 30,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "${this.widget.movie.release}",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontFamily: "KbeungThom-Regular",
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade500,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.grey),
                  ),
                ),
              ),
              Row(
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
            ],
          ),
        ),
      ],
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
}
