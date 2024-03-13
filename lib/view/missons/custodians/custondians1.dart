import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:interntest/view/missons/custodians/custondians2-2.dart';
import 'package:interntest/view/missons/custodians/custondians2.dart';

class CustondiansStartPage extends StatefulWidget {
  @override
  _CustondiansStartPageState createState() => _CustondiansStartPageState();
}

class _CustondiansStartPageState extends State<CustondiansStartPage> {
  int _selectedChoice = 0; 

  void _handleChoice(int choice) {
    setState(() {
      _selectedChoice = choice;
    });
    switch (_selectedChoice) {
      case 1:
      
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => IntroduceWithTranslator()),
        );
        break;
      case 2:
       
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ExamineSurroundingsPage()),
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
                child: Image.asset("assets/custon1.png",
                fit: BoxFit.cover,)),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Text(
                    """Bulunduğun yerde Custodianslarla karşılaştın. Şimdi, bu gizemli varlıklarla iletişim kurmalısın. Bir karar vermen gerekiyor. Hangi adımı atmalıyız?""",
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
                            "Kendini tanıtmak için \n gelişmiş çeviri \n cihazını kullanarak \n selam ver.",
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
                            "Etrafı daha yakından \n inceleyerek bilgi topla",
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

