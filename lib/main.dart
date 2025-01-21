import 'package:cinema_clone_app/ButtonNavBar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import 'Widget_of_cinema/Main_Account/item_in_more/Changetheme.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeLogic(),
      child: const CinemaApp(),
    ),
  );
}

class CinemaApp extends StatelessWidget {
  const CinemaApp({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeLogic themeLogic = Provider.of<ThemeLogic>(context);
    return GetMaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.light,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
        ),
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.black,
        ),
      ),
      debugShowCheckedModeBanner: false,
      themeMode: themeLogic.mode,
      home: ButtonNavBar(),
    );
  }
}