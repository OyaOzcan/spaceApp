import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:interntest/view/missons/custodians/custondians2-1-1.dart';
import 'package:interntest/view/missons/custodians/custondians2-1-2.dart';

class ExamineSurroundingsPage extends StatefulWidget {
  @override
  _ExamineSurroundingsPageState createState() => _ExamineSurroundingsPageState();
}

class _ExamineSurroundingsPageState extends State<ExamineSurroundingsPage> {
  int _selectedChoice = 0;

  void _handleChoice(int choice) {
    setState(() {
      _selectedChoice = choice;
    });
    switch (_selectedChoice) {
      case 1:
      
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => AgreementPage()),
        );
        break;
      case 2:
       
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) =>FightPage(title: 'Fight',)),
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
                child: Image.asset("assets/custon3.png",
                fit: BoxFit.cover,)),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Text(
                    """Çevreyi incelemeye karar verdin. Dikkatlice etrafa bakarken, aniden bir tuzağa düştün ve bilinmeyen varlıklar tarafından yakalandın.  Bilinmeyen varlıklar, Custodians'lara karşı onlarla birlik olmanı istedi.""",
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
                            "Onlarla birlik ol.",
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
                            "Gelişmiş silahınla onlara \n saldır ve kaç",
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