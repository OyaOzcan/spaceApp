
import 'package:animated_background/animated_background.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CommunicatePage extends StatefulWidget {
  const CommunicatePage({super.key, required this.title});



  final String title;

  @override
  State<CommunicatePage> createState() => _CommunicatePageState();
}

class _CommunicatePageState extends State<CommunicatePage> with TickerProviderStateMixin{

  var colorizeColors = [
    Color.fromARGB(255, 200, 0, 0),
    Color.fromARGB(255, 0, 0, 0),
    Color.fromARGB(255, 200, 0, 0),
    Color.fromARGB(255, 0, 0, 0),
    Color.fromARGB(255, 200, 0, 0),
  ];

  @override
  Widget build(BuildContext context) {
    var _height = MediaQuery.of(context).size.height;
    var _width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: AnimatedBackground(
        behaviour: SpaceBehaviour(),
        vsync: this,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                width: _width * .9,
                height: _height * .2,
                child: AnimatedTextKit(
                  animatedTexts: [
                    ColorizeAnimatedText(
                      "G Ö R E V  \n B A Ş A R I S I Z ",
                      textStyle: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold
                      ),
                      colors: colorizeColors,
                      textAlign: TextAlign.center,
                    ),
                  ],
                  isRepeatingAnimation: true,
                ),
              ),
              SizedBox(
                height: _height * .04,
              ),
             Padding(
               padding: const EdgeInsets.all(30.0),
               child: Text("Custodians'ı yatıştırmaya çalıştınız. Ancak, sınırlı dil becerileri nedeniyle anlaşamadınız ve daha çok kızdılar ",
               style: TextStyle(color: Colors.white),),
             ),
            ],
          ),
        ),
      ),
    );
  }
}
