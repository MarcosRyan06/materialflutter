import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //Tira o selinho de debug,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlueAccent, //Cor do appBar,
          toolbarHeight: 80, //Altura do appbar,
          title: Text(
            'Tentando Fazer Sozinho, Mas ta dificil', //Titulo do appBar,
            style: TextStyle(
              //Estilos do appBar,
              color: Colors.white, //Cor da fonte,
              fontSize: 22, //Tamanho da fonte,
            ),
          ),
        ),

        backgroundColor: Colors.grey, //Cor de Fundo,

        body: Center(
          child: Column( //Aqui tudo que esta no children vai ficar um em baixo do outro,
            mainAxisAlignment: MainAxisAlignment.center, // Aqui deixa tudo centralizado na tela,
            children: [
              Text(
                'Marcos Ryan Souza De Jesus', //Texto,
                style: TextStyle(
                  fontSize: 20, //Tamanho da Fonte,
                  color: Colors.black, //Cor da Fonte,
                  fontWeight: FontWeight.bold, //Fonte em NEgrito,
                  fontStyle: FontStyle.italic, //Fonte em italico,
                ),
              ),

              SizedBox(height: 20), // Espaçamento em altura,

              Text(
                'Desenvolvimento de Sistemas',
                style: TextStyle(
                  fontSize: 26,
                  color: Colors.pink,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.normal,
                ),
              ),

              SizedBox(height: 20),

              Text(
                'Programação Mobile - Flutter',
                style: TextStyle(
                  fontSize: 23,
                  color: Colors.deepPurple,
                  fontStyle: FontStyle.italic,
                ),
              ),

              SizedBox(height: 50),

              Row( // Aqui as children vão ficar lado a lodo, 
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Não desista do seus Sonhos',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.normal,
                    ),
                  ),

                  SizedBox(width: 140),

                  Row(
                    children: [
                      Text(
                        '2026',
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}