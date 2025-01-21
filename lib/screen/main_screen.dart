

import 'package:cinema_clone_app/Widget_of_cinema/Main_Account/main_account.dart';
import 'package:flutter/material.dart';

import '../Widget_of_cinema/Main_Screen/catecary_showing_now_showing.dart';
import '../Widget_of_cinema/Main_Screen/explore_button.dart';
import '../Widget_of_cinema/Main_Screen/list_of_day.dart';
import '../Widget_of_cinema/Main_Screen/promotion_package.dart';
import '../Widget_of_cinema/Main_Screen/pupular_widget.dart';
import '../Widget_of_cinema/Main_Screen/treding_movie_widget.dart';

class MyMainScreen extends StatelessWidget {
  MyMainScreen({Key? key}) : super(key: key);

  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Image.asset(
          "assets/images/logo.png",
          fit: BoxFit.cover,
          height: 150,
          filterQuality: FilterQuality.high,
        ),
        actions: [
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  size: 30,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notifications,
                  size: 30,
                ),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: SizedBox(
        width: 60,
        height: 60,
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.red,
          child: Image.network(
            "https://images.vexels.com/media/users/3/208357/isolated/preview/e9b4f7b5e9fb81e8ed223457e22cbb57-movie-tickets-black.png",
            width: 40,
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            const SizedBox(height: 15),
            //this is the button for choose cinema
            const MainAccount(),
            const SizedBox(height: 15),
            // the trending movie
            TrendingMovie(),
            const SizedBox(height: 15),
            // now showing and coming soon
            const SoonMovie(),
            const SizedBox(height: 15),
            const listDay(),
            const SizedBox(height: 15),
            const Row(
              children: [
                SizedBox(width: 13),
                Text(
                  "All Showing",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 15),
            //girde menu movie
            PopularWidget(),
            const SizedBox(height: 25),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Promotions",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "See all",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const Promotion(),
            const ExploreBtn(),

          ],
        ),
      ),
    );
  }
}
