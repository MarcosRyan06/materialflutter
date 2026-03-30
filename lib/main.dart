import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // remove o selinho "debug",

      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Carteira das Economias',
            style: TextStyle(
              fontSize: 20, //Tamanho da fonte do appBar,
              color: Colors.white, //Cor da Fonte do appBar,
            ),
          ),
          backgroundColor: Colors.lightBlueAccent, //Cor do appBar,
          toolbarHeight: 80, //Altura do appBar,
        ),

        backgroundColor: const Color.fromARGB(255, 57, 77, 255),

        body: const Center(
          child: Text(
            'Hello World!',
            style: TextStyle(
              fontFamily: 'Arial', //Estilo da Fonte se Tiver no sistema,
              fontSize: 32, //Tamanho da fonte,
              fontWeight: FontWeight.bold, //Fonte em negrito,
              color: Colors.white, //Cor da fonte,
            ),
          ),
        ),
      ),
    );
  }
}