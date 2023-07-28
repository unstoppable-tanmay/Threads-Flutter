import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:threads/Model/page.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  @override
  Widget build(BuildContext context) {
    pageGet page = Get.find();

    return BottomNavigationBar(
        backgroundColor: Theme.of(context).primaryColor,
        currentIndex: selectedPage,
        onTap: (value) => setState(() {
              selectedPage = value;
              page.setPage(value);
            }),
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.white30,
        selectedItemColor: Colors.white,
        iconSize: 35,
        enableFeedback: true,
        items: [
          BottomNavigationBarItem(
            icon: IconImage(
                img: "home", on: page.pageCount.value == 0, isFill: true),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: IconImage(
                img: "search", on: page.pageCount.value == 1, isFill: false),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: IconImage(
                img: "add", on: page.pageCount.value == 2, isFill: false),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: IconImage(
                img: "heart", on: page.pageCount.value == 3, isFill: true),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: IconImage(
                img: "user", on: page.pageCount.value == 4, isFill: true),
            label: "",
          ),
        ]);
  }
}

class IconImage extends StatelessWidget {
  const IconImage(
      {super.key, required this.img, required this.on, required this.isFill});

  final String img;
  final bool on;
  final bool isFill;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      isFill
          ? "assets/app_icons/$img${on ? '1' : ''}.png"
          : "assets/app_icons/$img.png",
      width: 30,
      height: 30,
      filterQuality: FilterQuality.high,
      color: on ? Colors.white : Colors.white38,
    );
  }
}
