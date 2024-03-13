
import 'package:animated_background/animated_background.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:interntest/view/missons/custodians/custodians_mission.dart';
import 'package:interntest/view/missons/epsilon_misson.dart';

import 'package:interntest/view/missons/zephyr_misson.dart';

class MissonPage extends StatefulWidget {
 

  @override
  State<MissonPage> createState() => _MissonPageState();
}

class _MissonPageState extends State<MissonPage> with TickerProviderStateMixin{

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
                child: _buildAnimatedText("G Ö R E V L E R")
              ),
              SizedBox(
                height: _height * .04,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                   width: _width / 1.2,
                    height: _height /8,
                    decoration: BoxDecoration(color: Color.fromARGB(255, 200, 0, 0), borderRadius: BorderRadius.circular(20)),
                    child: FilledButton(
                  style: FilledButton.styleFrom(
                    padding: EdgeInsets.zero,
                    backgroundColor: Color.fromARGB(255, 200, 0, 0),
                  ),
                    onPressed: () async {
                       Navigator.push(
                         context,
                         MaterialPageRoute(builder: (context) => EpsilonMissionDetailPage()));
                    },
                    child:Text(
                      "Epsilon III'teki Antik Kalıntılar",
                      style: TextStyle(
                        fontFamily: "MontserratRegular",
                        fontWeight: FontWeight.bold,
                        color : Colors.white,
                        fontSize: _width * .038,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  ),
                  SizedBox(height: _height/30,),
                  Container(
                    alignment: Alignment.center,
                    width: _width / 1.2,
                    height: _height /8,
                    decoration: BoxDecoration(color: Color.fromARGB(255, 200, 0, 0), borderRadius: BorderRadius.circular(20)),
                    child: FilledButton(
                      style: FilledButton.styleFrom(
                        padding: EdgeInsets.zero,
                        backgroundColor: Color.fromARGB(255, 200, 0, 0),
                      ),
                      onPressed: () async {
                         Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ZephyrMissionDetailPage()));

                      },
                      child: Text(
                        "Zephyr Gezegeni'nin Atmosferik Sırları",
                        style: TextStyle(
                          fontFamily: "MontserratRegular",
                          fontWeight: FontWeight.bold,
                          color : Colors.white,
                          fontSize: _width * .038,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                   SizedBox(height: _height/30,),
                  Container(
                    alignment: Alignment.center,
                    width: _width / 1.2,
                    height: _height /8,
                    decoration: BoxDecoration(color: Color.fromARGB(255, 200, 0, 0), borderRadius: BorderRadius.circular(20)),
                    child: FilledButton(
                      style: FilledButton.styleFrom(
                        padding: EdgeInsets.zero,
                        backgroundColor: Color.fromARGB(255, 200, 0, 0),
                      ),
                      onPressed: () async {
                         Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => CustodiansMissionDetailPage()));

                      },
                      child: Text(
                        "The Custodians ile İlk Temas",
                        style: TextStyle(
                          fontFamily: "MontserratRegular",
                          fontWeight: FontWeight.bold,
                          color : Colors.white,
                          fontSize: _width * .038,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: _height * .10,
              ),

            ],
          ),
        ),
      ),
    );
  }
Widget _buildAnimatedText(String text){
  return 
   AnimatedTextKit(
                  animatedTexts: [
                    ColorizeAnimatedText(text,
                      textStyle: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold
                      ),
                      colors: colorizeColors,
                      textAlign: TextAlign.center,
                    ),
                  ],
                  isRepeatingAnimation: true,
                );
}

}
