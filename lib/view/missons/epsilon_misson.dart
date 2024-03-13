import 'dart:ui';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:interntest/model/epsilon_content.dart';
import 'package:interntest/view/home_page.dart';
import 'package:interntest/model/zephyr_content.dart';
import 'package:rive/rive.dart';

class EpsilonMissionDetailPage extends StatefulWidget {
  const EpsilonMissionDetailPage({Key? key}) : super(key: key);

  @override
  State<EpsilonMissionDetailPage> createState() => _EpsilonMissionDetailPageState();
}

class _EpsilonMissionDetailPageState extends State<EpsilonMissionDetailPage> {
  late PageController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PageController();
  }

  int _currentPage = 0;

  var colorizeColors = [
    Color.fromARGB(255, 200, 0, 0),
    Color.fromARGB(255, 0, 0, 0),
    Color.fromARGB(255, 200, 0, 0),
    Color.fromARGB(255, 0, 0, 0),
    Color.fromARGB(255, 200, 0, 0),
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.black, 
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 3,
            child: PageView.builder(
              physics: const BouncingScrollPhysics(),
              controller: _controller,
              onPageChanged: (value) => setState(() => _currentPage = value),
              itemCount: epsilonContents.length,
              itemBuilder: (context, i) {
                return Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Image.asset(
                        epsilonContents[i].image,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: 
                       AnimatedTextKit(
                  animatedTexts: [
                    ColorizeAnimatedText(
                     epsilonContents[i].title,
                      textStyle: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold
                      ),
                      colors: colorizeColors,
                      textAlign: TextAlign.center,
                    ),
                  ],
                  isRepeatingAnimation: true,
                ),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        epsilonContents[i].desc,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w300,
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                );
              },
            ),
          ),
          if (_currentPage + 1 == epsilonContents.length)
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: ElevatedButton(
                onPressed: () {
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 200, 0, 0),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                ),
                child: const Text("KEŞFETMEYE BAŞLA!",
                style: TextStyle(color: Colors.black),),
              ),
            )
          else
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical:30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      _controller.jumpToPage(epsilonContents.length - 1);
                    },
                    child: const Text(
                      "ATLA",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  ElevatedButton(

                    onPressed: () {
                      _controller.nextPage(duration: const Duration(milliseconds: 200), curve: Curves.easeIn);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor:  Color.fromARGB(255, 200, 0, 0),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                    ),
                    child: const Text("İLERLE",
                    style: TextStyle(color: Colors.black),
                    
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
