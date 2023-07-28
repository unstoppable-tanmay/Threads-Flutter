import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:threads/Model/page.dart';

// Data
import 'package:threads/Model/theme.dart';

// Pages
import 'package:threads/View/home.dart';
import 'package:threads/View/likes.dart';
import 'package:threads/View/profile.dart';
import 'package:threads/View/search.dart';
import 'package:threads/View/thread.dart';

// Components
import 'Components/bottomnavigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Threads', // Title in App
        debugShowCheckedModeBanner: false, // for hiding the debug banner
        theme: lightTheme, // theme in light mode
        darkTheme: darkTheme, // theme in dark mode
        home: const HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // All Routes
    List<Widget> routes = [
      const Home(),
      const Search(),
      const Thread(),
      const Likes(),
      const Profile()
    ];

    // Page in page controller
    Get.put(pageGet());
    pageGet page = Get.find();

    return Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: Obx(() => routes[page.pageCount.value]),
        bottomNavigationBar: const BottomNavigation());
  }
}
