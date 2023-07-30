// ignore_for_file: non_constant_identifier_names, file_names

import 'package:flutter/material.dart';

Widget TextData(int index, bool lang) {
  if (index == 0) {
    if (lang) {
      return const Text(
        "हम जुड़ते हैं",
        style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
      );
    } else {
      return const Text(
        "We Connect",
        style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
      );
    }
  } else if (index == 1) {
    if (lang) {
      return const Text(
        "हमने सलुझाया",
        style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
      );
    } else {
      return const Text(
        "We Solve",
        style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
      );
    }
  } else if (index == 2) {
    if (lang) {
      return const Text(
        "हम सुनते हैं",
        style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
      );
    } else {
      return const Text(
        "We Listen",
        style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
      );
    }
  } else {
    if (lang) {
      return const Text(
        "हम सूचित करते हैं",
        style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
      );
    } else {
      return const Text(
        "We Notify",
        style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
      );
    }
  }
}
