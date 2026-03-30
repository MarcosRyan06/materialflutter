import 'package:flutter/material.dart'; 
 
void main() { 
  runApp(const MainApp()); 
} 
 
class MainApp extends StatelessWidget { 
  const MainApp({super.key}); 
 
  @override 
  Widget build(BuildContext context) { 
    return MaterialApp( 
      debugShowCheckedModeBanner: false, //tira o selinho DEBUG 
 
      home: Scaffold( 

        appBar: AppBar(
          backgroundColor: Colors.lightBlueAccent,
          title: const Text(
            'Atividade Avaliativa - Layout Com Column e Row no Flutter',
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),



        backgroundColor: Colors.tealAccent,

        body: Center( 
          child: Column( 
            mainAxisAlignment: MainAxisAlignment.center, 
            children: [
              Text(
                'Olá Pessoal!',
                style: TextStyle(
                  fontSize: 42,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 22),

              Text(
                'Estudando Flutter',
                style: TextStyle(
                  fontSize: 32,
                  fontStyle: FontStyle.normal,
                  color: Colors.green,
                ),
              ),

              SizedBox(height: 22),

              Text(
                'Bora Codar',
                style: TextStyle(
                  fontSize: 42,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepOrange,
                ),
              ),

              SizedBox(height: 22),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Jogos',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 22,
                      fontStyle: FontStyle.italic,
                      color: Colors.deepPurple,
                    ),
                  ),

                  SizedBox(width: 44),

                  Text(
                    'Música',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.pinkAccent,
                    ),
                  ),
                  
                  SizedBox(width: 44),

                  Text(
                    'Séries',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontSize: 22,
                      fontStyle: FontStyle.italic,
                      color: Colors.deepOrangeAccent,
                    ),
                  ),
                ],
              ),

              SizedBox(height: 22),

              Text(
                '2026 - Vamos Nessa!',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
            ],
          ), 
        ), 
      ), 
    ); 
  } 
}