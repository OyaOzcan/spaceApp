

import 'package:flutter/material.dart';
import 'package:interntest/view/missons/custodians/custondians2-2-1.dart';
import 'package:interntest/view/missons/custodians/custondians2-2-2.dart';


class IntroduceWithTranslator extends StatefulWidget {
  @override
  _IntroduceWithTranslatorState createState() => _IntroduceWithTranslatorState();
}

class _IntroduceWithTranslatorState extends State<IntroduceWithTranslator> {
  int _selectedChoice = 0;

  void _handleChoice(int choice) {
    setState(() {
      _selectedChoice = choice;
    });
    switch (_selectedChoice) {
      case 1:
      
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => CommunicatePage(title: 'Communicate')),
        );
        break;
      case 2:
       
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => FixDevice(title: 'Fix Device',)),
        );
        break;
      default:
      
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body:  Center(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                child: Image.asset("assets/custon2.png",
                fit: BoxFit.cover,)),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Text(
                    """Gelişmiş çeviri cihazını kullanarak kendini Custodianslara tanıtmaya karar verdin. Ancak, ne yazık ki çeviri cihazı beklenmedik bir şekilde arızalandı ve tam tersi anlamlı cümleler üretmeye başladı. Custodianslar, yanlış anlamalar nedeniyle kızgın hale geldi.""",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                       fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w300,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                        _handleChoice(1); 
                      },
                    child: Container(
                       height: MediaQuery.of(context).size.height/8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color.fromARGB(255, 200, 0, 0),
                      ),
                   child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            "Custodians'ı sakinleştirmek \n için çaba sarfet",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                        _handleChoice(2); 
                      },
                    child: Container(
                      height: MediaQuery.of(context).size.height/8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color.fromARGB(255, 200, 0, 0),
                      ),  
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            "Arızalı çeviri cihazını \n düzeltmeye çalış.",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                  ),
                
                ],
              ),
            ],
          ),
        ),
    );
  }
}