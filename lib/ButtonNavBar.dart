import 'package:cinema_clone_app/login_screen/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'Widget_of_cinema/Main_Account/main_account.dart';
import 'Widget_of_cinema/Main_Cinema/main_cinema.dart';
import 'Widget_of_cinema/Main_FoodMenu/main_food.dart';
import 'Widget_of_cinema/Main_Official/main_official.dart';
import 'Widget_of_cinema/Main_Screen/main_screen.dart';

class ButtonNavBar extends StatelessWidget {
  ButtonNavBar({super.key});

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.home),
        title: "Home",
        activeColorPrimary: CupertinoColors.systemRed,
        inactiveColorPrimary: CupertinoColors.white,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.tickets_fill),
        title: "Offers",
        activeColorPrimary: CupertinoColors.systemRed,
        inactiveColorPrimary: CupertinoColors.white,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.location_solid),
        title: "Cinemas",
        activeColorPrimary: CupertinoColors.systemRed,
        inactiveColorPrimary: CupertinoColors.white,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.flame_fill),
        title: "Foods",
        activeColorPrimary: CupertinoColors.systemRed,
        inactiveColorPrimary: CupertinoColors.white,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.person_alt),
        title: "Accounts",
        activeColorPrimary: CupertinoColors.systemRed,
        inactiveColorPrimary: CupertinoColors.white,
      ),
    ];
  }
  

  List<Widget> _buildScreens() {
    return [
      MainScreen(),
      const MainOfficial(),
      const MainCinema(),
      const MainFood(),
      const MainAccount(),
    ];
  }

  final PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);

  @override
  Widget build(BuildContext context) {
   return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineToSafeArea: true,
      backgroundColor: Colors.black,
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset: true,
      stateManagement: true,
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.black,
      ),
    );
  }
}