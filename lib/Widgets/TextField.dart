// ignore_for_file: file_names

import 'package:flutter/material.dart';

class TextFieldData extends StatelessWidget {
  const TextFieldData({super.key, required this.lang});
  final bool lang;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(
            color: Colors.grey,
            width: 1.0,
          ),
          color: const Color.fromARGB(255, 255, 255, 249),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
          child: Row(
            children: [
              const Text(
                '+91',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(width: 8),
              const Text(
                '|',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w100,
                    color: Colors.grey),
              ),
              const SizedBox(width: 6),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: TextFormField(
                    // maxLength: 10,
                    cursorColor: Colors.black,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      focusColor: Colors.black,
                      border: InputBorder.none,
                      hintText: lang ? "फ़ोन नंबर" : 'Phone number',
                      hintStyle: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
