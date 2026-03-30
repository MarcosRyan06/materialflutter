import 'package:flutter/material.dart';
void main() { 
  runApp(const MainApp()); 
} 
 
class MainApp extends StatelessWidget { 
  const MainApp({super.key}); 
 
  @override 
  Widget build(BuildContext context) { 
    return MaterialApp( 
      debugShowCheckedModeBanner: false, //tira o selinho DEBUG, 
 
      home: Scaffold( 
        backgroundColor: Colors.grey, //Cor plano de fundo, 
 
        appBar: AppBar( 
          backgroundColor: Colors.deepPurple, //Cor do appBar,
          title: const Text( 
            'Meu primeiro APP', //Titulo do appBar,
            style: TextStyle(
            fontSize: 22, //Tamanho da Fonte,
            color: Colors.white //Cor da fonte/Texto,
            ), 
          ), 
        ), 
 
        body: Center( 
          child: Column( 
            mainAxisAlignment: MainAxisAlignment.center, 
            children: [ 
              Text( 
                'Bem vindo ao Flutter!', //Texto/titulo,
                style: TextStyle( 
                  fontSize: 32, //Tamanho da fonte,
                  color: Colors.deepOrange, //Cor da fonte,
                  fontWeight: FontWeight.bold, //Fonte em negrito,
                  fontFamily: 'Arial', //Tipo de fonte (Se tiver no sistema),
                ), 
              ), 
              SizedBox(height: 20), //Espaçamento entre objetos/childrens,
              Text( 
                'Calma, tudo fará sentido!', //Titulo ou Texto,
                style: TextStyle( 
                  fontSize: 18, //Tamanho da fonte,
                  color: const Color.fromARGB(255, 1, 57, 71), //Cor da fonte, 
                  fontWeight: FontWeight.bold, //Fonte em negrito,
                  fontFamily: 'Arial', //Tipo de fonte,
                ), 
              ), 
            ], 
          ), 
        ), 
      ), 
    ); 
  } 
} 