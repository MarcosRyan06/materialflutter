import 'package:flutter/material.dart';
//Ponto de Entrada do aplicativo Flutter,
void main() {
  runApp(const MainApp());
}

//App principal que configura MaterialApp,
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    //Material fornece te,a e navegação básica para o app,
    return const MaterialApp(
      debugShowCheckedModeBanner: false, //Remove o selo debug,
      home: const CampGame(),
    );
  }
}

//*********Camp Game *********/

//Tela que precisa manter estado (Valores dos inputs e resultado)

class CampGame extends StatefulWidget{
  const CampGame({super.key});

  @override 
  State<CampGame> createState() => _CampGameState();

}

//Estado da CampGame: é aqui que guardamos os controllers e o resultado
class _CampGameState extends State<CampGame>{

  //Criação das inputs
  //TextEditingController permite ler/alterar o texto dos TextFields
  final TextEditingController vitoriasController = TextEditingController();
  final TextEditingController derrotasController = TextEditingController();
  final TextEditingController pontosController = TextEditingController();

  //Variavel que amarzena o resultado da soma e que será exibida na tela
  String resultado ="";

  //função chamda ao pressionar o botão 'Resultado'
  void calcular(){
    //Tenta converter o texto para duble; se falhar, usa 0 como padrão
    double vitorias=double.tryParse(vitoriasController.text) ?? 0;
    double derrotas=double.tryParse(derrotasController.text) ?? 0;
    double pontos=double.tryParse(pontosController.text) ?? 0;

    double partidas = vitorias + derrotas;
    double pontuacao = vitorias * pontos;
    double percetual = partidas > 0 ? (vitorias / partidas) * 100 : 0;

    //SetState informa ao flutter que o setado mudou e a UI deve ser redesenhada
    setState(() {
      resultado =
        "Total de partidas: $partidas\n"
        "Pontuação: $pontuacao\n"
        "Vitorias: ${percetual.toStringAsFixed(2)} %";

    });
  }
  @override
  Widget build(BuildContext context){
    //Scaffold fornece estrutura visual básica (AppBar, Body, etc....)
    return Scaffold(
      appBar: AppBar(
        title: const Text('Brasileirão serie A',
        style: TextStyle(
          color: Colors.black
        ),
        ),
        backgroundColor: Colors.lightBlueAccent,
        actions: const[
          Icon(Icons.sports_soccer_outlined,
          color: Colors.black,
          ),
          SizedBox(width: 18), 
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        //Column organiza os widgets verticalamente
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Primeiro Campo de Texto para as estastisticas
            TextField(
              controller: vitoriasController,
              decoration: const InputDecoration(
                labelText: 'Vitorias',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number, //Abre o teclado numérico
            ),
            const SizedBox(height: 20),

            TextField(
              controller: derrotasController,
              decoration: const InputDecoration(
                labelText: 'Derrotas',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),

            TextField(
              controller: pontosController,
              decoration: const InputDecoration(
                labelText: 'Pontos por Vitoria',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 25),

            ElevatedButton.icon(
              onPressed: calcular,
              icon: const Icon(Icons.calculate,
              color: Colors.lightBlueAccent,
              ),
              label: const Text('Calcular pontuação',
              style: TextStyle(
                color: Colors.black,
              ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightBlueAccent,
                padding: const EdgeInsets.symmetric(
                  horizontal: 30, //Insere uma borda dentro do botão deixando o mais facil de clicar
                  vertical: 15,
                ),
              ),
            ),
            const SizedBox(height: 30),

            Text(
              resultado,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.lightBlueAccent,
              ),
            ),
          ],
        ),
      ),
  );
}

















}

