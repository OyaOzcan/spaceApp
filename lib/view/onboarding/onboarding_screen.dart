import 'dart:ui';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:interntest/view/home_page.dart';
import 'package:interntest/model/onboarding_content.dart';
import 'package:rive/rive.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late PageController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PageController();
  }

  int _currentPage = 0;

  var colorizeColors = [
    Colors.white,
    Color.fromARGB(255, 0, 0, 0),
    Colors.white,
    Color.fromARGB(255, 0, 0, 0),
    Colors.white,
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.black, 
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: PageView.builder(
              physics: const BouncingScrollPhysics(),
              controller: _controller,
              onPageChanged: (value) => setState(() => _currentPage = value),
              itemCount: contents.length,
              itemBuilder: (context, i) {
                return Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height/2.5, 
                      child: RiveAnimation.asset(
                        contents[i].image,
                        fit: BoxFit.cover, 
                      ),
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child:   AnimatedTextKit(
                  animatedTexts: [
                    ColorizeAnimatedText(
                     contents[i].title,
                      textStyle: TextStyle(
                          fontSize: 26,
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
                      padding: const EdgeInsets.symmetric(horizontal: 35),
                      child: Text(
                        contents[i].desc,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w300,
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                );
              },
            ),
          ),
          if (_currentPage + 1 == contents.length)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 60),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const MyHomePage(title: 'Flutter Demo Home Page')),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 200, 0, 0),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                ),
                child: const Text("YOLCULUĞUN BAŞLASIN!",
                style: TextStyle(color: Colors.black),),
              ),
            )
          else
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical:60),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      _controller.jumpToPage(contents.length - 1);
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
