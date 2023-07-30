// ignore_for_file: file_names

import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key, required this.lang});
  final bool lang;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(
            color: Colors.blue,
            width: 2.0,
          ),
        ),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              elevation: 3,
              shadowColor: Colors.black,
              surfaceTintColor: Colors.black,
              maximumSize: const Size.fromHeight(50),
              backgroundColor: const Color.fromARGB(255, 255, 153, 51)),
          onPressed: () {},
          child: Center(
              child: lang
                  ? const Text("जारी रखना",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600))
                  : const Text(
                      "Continue",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    )),
        ),
      ),
    );
  }
}
