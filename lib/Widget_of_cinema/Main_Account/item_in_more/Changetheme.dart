import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class ThemeLogic extends ChangeNotifier {
  ThemeMode _mode = ThemeMode.system;
  ThemeMode get mode => _mode;

  void changeToDark() {
    _mode = ThemeMode.dark;
    notifyListeners();
  }

  void changeToLight() {
    _mode = ThemeMode.light;
    notifyListeners();
  }

  void changeToSystem() {
    _mode = ThemeMode.system;
    notifyListeners();
  }
}

class Changetheme extends StatelessWidget {
  const Changetheme({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const Text(
          "Change Theme",
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
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    final ThemeLogic themeLogic = Provider.of<ThemeLogic>(context);
    return ListView(
      children: [
        ExpansionTile(
          title: const Text("Theme Color"),
          initiallyExpanded: true,
          children: [
            ListTile(
              leading: const Icon(Icons.light_mode),
              title: const Text("Light Mode"),
              onTap: () {
                themeLogic.changeToLight();
              },
              trailing: themeLogic.mode == ThemeMode.light ? const Icon(Icons.check) : null,
            ),
            ListTile(
              leading: const Icon(Icons.dark_mode),
              title: const Text("Dark Mode"),
              onTap: () {
                themeLogic.changeToDark();
              },
              trailing: themeLogic.mode == ThemeMode.dark ? const Icon(Icons.check) : null,
            ),
            ListTile(
              leading: const Icon(Icons.phone_android),
              title: const Text("System Mode"),
              onTap: () {
                themeLogic.changeToSystem();
              },
              trailing: themeLogic.mode == ThemeMode.system ? const Icon(Icons.check) : null,
            ),
          ],
        ),
      ],
    );
  }
}