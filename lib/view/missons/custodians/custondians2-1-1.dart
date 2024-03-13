import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class AgreementPage extends StatefulWidget {
  @override
  _AgreementPageState createState() => _AgreementPageState();
}

class _AgreementPageState extends State<AgreementPage> {
  int _selectedChoice = 0; // Kullanıcının seçimini tutacak değişken

  void _handleChoice(int choice) {
    setState(() {
      _selectedChoice = choice;
    });
    switch (_selectedChoice) {
      case 1:
      
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(builder: (context) => AgreementPage(title: 'Agre')),
        // );
        break;
      case 2:
       
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(builder: (context) => FixDevice(title: 'Fix Device',)),
        // );
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
                child: Image.asset("assets/custon7.png",
                fit: BoxFit.cover,)),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Text(
                    """Bilinmeyen varlıklar, iş birliği için Custodians'dan birini öldürmeni istiyorlar.""",
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
                            "Custondians'ı Öldür",
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
                            "Kabul ettiğini söyle, \n onları oyala ve bilgi topla ",
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