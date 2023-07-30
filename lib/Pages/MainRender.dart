// ignore_for_file: file_names
import 'package:assignment/Widgets/Dot.dart';
import 'package:assignment/Widgets/LoginButton.dart';
import 'package:assignment/Widgets/TextData.dart';
import 'package:assignment/Widgets/TextField.dart';
import 'package:flutter/material.dart';

class MainRender extends StatefulWidget {
  const MainRender({super.key, required this.image, required this.index});

  final String image;
  final int index;

  @override
  State<MainRender> createState() => _MainRenderState();
}

bool lang = false;

class _MainRenderState extends State<MainRender> {
  void _showLanguageDialog(BuildContext context) async {
    showDialog<String>(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: lang ? const Text('भाषा चुने') : const Text('Select Language'),
          children: [
            SimpleDialogOption(
              onPressed: () {
                setState(() {
                  lang = true;
                });
                Navigator.pop(context, 'Hindi');
              },
              child: const Text('हिंदी',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 16)),
            ),
            SimpleDialogOption(
              onPressed: () {
                setState(() {
                  lang = false;
                });
                Navigator.pop(context, 'English');
              },
              child: const Text('English',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 16)),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: TextButton.icon(
                onPressed: () {
                  _showLanguageDialog(context);
                },
                icon: const Icon(
                  Icons.language,
                  color: Colors.black,
                ),
                label: lang
                    ? const Text("भाषा",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 16))
                    : const Text(
                        "Language",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w400),
                      )),
          )
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: const Color(0xFFFFFFF0),
                width: 311.8,
                height: 311.9,
                child: Image.asset("assets/${widget.image}"),
              ),
              TextData(widget.index, lang),
              const SizedBox(height: 32),
              DotIndicator(currentIndex: widget.index),
              const SizedBox(height: 32),
              TextFieldData(lang: lang),
              const SizedBox(height: 32),
              LoginButton(
                lang: lang,
              ),
              const SizedBox(height: 32),
              if (lang)
                const Text("जारी रखकर, आप हमारी बात से सहमत हैं",
                    style: TextStyle(fontWeight: FontWeight.w300))
              else
                const Text(
                  "By continuing, you agree to our",
                  style: TextStyle(fontWeight: FontWeight.w300),
                ),
              const SizedBox(height: 8),
              InkWell(
                child: lang
                    ? const Text(
                        "नियम एवं शर्तें एवं गोपनीयता नीति",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.underline,
                        ),
                      )
                    : const Text(
                        "Terms & Condition & Privacy Policy",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.underline,
                        ),
                      ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
