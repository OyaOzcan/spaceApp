import 'package:animated_background/animated_background.dart';
import 'package:animated_background/space.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:interntest/model/card.dart';
import 'package:lottie/lottie.dart';
import 'package:rive/rive.dart';

class PlanetPage extends StatefulWidget {
  const PlanetPage({Key? key}) : super(key: key);

  @override
  State<PlanetPage> createState() => _PlanetPageState();
}

class _PlanetPageState extends State<PlanetPage> with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation _animation;
  late AnimationStatus _status;
  int _selectedIndex = -1;

  final List<MyCard> cards = [
    MyCard(front: "ZEPHYR", back:  'Yoğun bulut katmanları ve gizemli atmosferiyle bilinen bir gezegen.', asset: 'assets/planet2.json'),
    MyCard(front: "EPSİLON III", back: 'Antik uygarlıkların kalıntılarına ev sahipliği yapan, gizem dolu bir dünya.',  asset: 'assets/planet4.json'),
    MyCard(front:  "TERRA NOVA", back: 'Yeni keşfedilen, yaşanabilir bölgeye sahip, bol su kaynakları olan bir dünya.',  asset: 'assets/planet3.json'),
     MyCard(front: "VORTEXİA", back:  ' Güçlü manyetik alanları ve sürekli değişen hava koşullarıyla tanınan, zorlu bir gezegen.', asset: 'assets/planet5.json'),
    MyCard(front: "NEBULON", back: 'Renkli gaz bulutları ve aktif volkanik aktiviteleriyle dikkat çeken bir gezegen.',  asset: 'assets/planet6.json'),
  ];

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: const Duration(seconds: 1));
    _animation = Tween(end: 1.0, begin: 0.0).animate(_controller)
      ..addListener(() {
        setState(() {});
      });
    _status = AnimationStatus.dismissed; 
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

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
                      "G E Z E G E N L E R",
                      textStyle: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                      colors: [
                        Color.fromARGB(255, 200, 0, 0),
                        Color.fromARGB(255, 0, 0, 0),
                        Color.fromARGB(255, 200, 0, 0),
                        Color.fromARGB(255, 0, 0, 0),
                        Color.fromARGB(255, 200, 0, 0),
                      ],
                      textAlign: TextAlign.center,
                    ),
                  ],
                  isRepeatingAnimation: true,
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: cards.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        if (_selectedIndex == index) {
                          if (_status == AnimationStatus.dismissed) {
                            _controller.forward();
                            _status = AnimationStatus.completed;
                          } else {
                            _controller.reverse();
                            _status = AnimationStatus.dismissed;
                          }
                        } else {
                          _selectedIndex = index;
                          _controller.forward();
                          _status = AnimationStatus.completed;
                        }
                      },
                      child: Stack(
                      clipBehavior: Clip.none, 
                      children: [
                      
Transform(
  alignment: FractionalOffset.center,
  transform: Matrix4.identity()
    ..setEntry(3, 2, 0.0015) 
    ..rotateY(_animation.value*3), 
  child: _animation.value < 0.5
      ? Container(
          height: MediaQuery.of(context).size.height / 8,
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color.fromARGB(255, 200, 0, 0),
          ),
          child: Center(
            child: Text(cards[index].front, style: TextStyle(fontSize: 20, color: Colors.white)),
          ),
        )
      : Transform(
      
          alignment: FractionalOffset.center,
          transform: Matrix4.identity()..rotateY(3),
          child: Container(
           
            height: MediaQuery.of(context).size.height / 8,
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.black,
            ),
            child: Center(
              child: Text(cards[index].back, style: TextStyle(fontSize: 20, color: Colors.white)),
            ),
          ),
        ),
),

                        Positioned(
                          top: -30,
                          right: -30,
                          child: Lottie.asset(
                       cards[index].asset,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                        ),
                      ],
                    ),
                      
                      
      
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}