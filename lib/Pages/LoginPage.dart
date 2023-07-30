// ignore_for_file: file_names, must_be_immutable
import 'package:assignment/Pages/MainRender.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  List<String> pages = [
    "page1.png",
    "page2.png",
    "page3.png",
    "page4.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Swiper(
        itemBuilder: (context, index) {
          return MainRender(
            image: pages[index],
            index: index,
          );
        },
        itemCount: 4,
        control: const SwiperControl(color: Color(0xFFFFFFF0)),
      ),
    );
  }
}
