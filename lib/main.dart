import 'package:flutter/material.dart';

//Ponto de entrada do aplicativo Flutter
void main() {
  runApp(const MainApp());
}

//App principal que configura MaterialApp
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Material fornece tema e navegação básica para o app
    return const MaterialApp(
      debugShowCheckedModeBanner: false, //Remove o selo Debug
      home: const TelaSoma(), //Tela Inicial do App
    );
  }
}

//********TELA SOMA ***********/

//Tela que precisa manter estado (valores dos inputs e resultado)
class TelaSoma extends StatefulWidget {
  const TelaSoma({super.key});

  @override
  State<TelaSoma> createState() => _TelaSomaState();
}

//Estado da TelaSoma: é aqui que guardamos os controllers e o resultado
class _TelaSomaState extends State<TelaSoma> {
  //CRIAÇÃO DAS INPUTS
  //TextEditingController permite ler/alterar o texto dos TextFields
  final TextEditingController numero1Controller = TextEditingController();
  final TextEditingController numero2Controller = TextEditingController();

  //Variável que armazena o resultado da soma e que será exibida na tela
  double resultado = 0;

  //Função chamada ao pressionar o botão 'Somar'
  void somar() {
    //Tenta converter o texto para double; se falhar, usa 0 como padrão
    double n1 = double.tryParse(numero1Controller.text) ?? 0;
    double n2 = double.tryParse(numero2Controller.text) ?? 0;

    //setState informa ao Flutter que o estado mudou e a UI deve ser redesenhada
    setState(() {
      resultado = n1 + n2;
    });
  } //somar

  @override
  Widget build(BuildContext context) {
    //Scafold fornece estrutura visual básica (AppBar, Body, etc...)
    return Scaffold(
      appBar: AppBar(
        title: const Text('Somar Numeros'),
        backgroundColor: Colors.deepPurple,
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),
        //Column organiza os widgets vertucalmente
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Primeiro Campo de Texto para o numero 1
            TextField(
              controller: numero1Controller,
              decoration: const InputDecoration(
                labelText: 'Digite o primeiro número',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number, //Abre o teclado numérico
            ),
            const SizedBox(height: 20),

            //Segundo campo de texto para o número 2
            TextField(
              controller: numero2Controller,
              decoration: const InputDecoration(
                labelText: 'Digite o segundo número',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),

            //Botão que dispara a função somar
            ElevatedButton(onPressed: somar, child: const Text('Somar')),
            const SizedBox(height: 20),

            //Exibe o resultado atual
            Text(
              'Resultado: $resultado',
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
