// ignore_for_file: file_names

import 'package:flutter/material.dart';

class DotIndicator extends StatelessWidget {
  final int currentIndex;

  const DotIndicator({super.key, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(4, (index) => buildDot(index)),
    );
  }

  Widget buildDot(int index) {
    final bool isActive = index == currentIndex;
    final double dotSize = isActive ? 12.0 : 10.0;
    final double dotwidth = isActive ? 22.0 : 10.0;
    final Color dotColor = isActive
        ? const Color.fromARGB(255, 255, 153, 51)
        : const Color.fromARGB(255, 255, 214, 164);
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 6.0),
      width: dotwidth,
      height: dotSize,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: dotColor,
        shape: BoxShape.rectangle,
      ),
    );
  }
}
