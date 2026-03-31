import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: EspaceCadet(),
    );
  }
}

class EspaceCadet extends StatefulWidget {
  const EspaceCadet({super.key});

  @override
  State<EspaceCadet> createState() => _EspaceCadet();
}

class _EspaceCadet extends State<EspaceCadet> {
  final distanciaController = TextEditingController();
  final velocidadeController = TextEditingController();
  final consumoController = TextEditingController();
  final combustivelController = TextEditingController();

  String resultado = "";

  double tempo = 0;

  void calcularTempo() {
    double distancia = double.tryParse(distanciaController.text) ?? 0;
    double velocidade = double.tryParse(velocidadeController.text) ?? 1;

    tempo = distancia / velocidade;

    setState(() {
      resultado = "Tempo de viagem: ${tempo.toStringAsFixed(2)} horas\n";

      if (velocidade > 50000) {
        resultado += "🚀 Velocidade de dobra ativada!\n";
      }

      if (tempo > 200) {
        resultado += "⚠️ Missão muito longa!\n";
      }
    });
  }

  void calcularCombustivel() {
    double consumo = double.tryParse(consumoController.text) ?? 0;
    double combustivelInicial =
        double.tryParse(combustivelController.text) ?? 0;

    double necessario = tempo * consumo;
    double restante = combustivelInicial - necessario;

    setState(() {
      resultado +=
          "\nCombustível necessário: ${necessario.toStringAsFixed(2)} L\n";

      if (restante >= 0) {
        resultado += "Combustível restante: ${restante.toStringAsFixed(2)} L\n";
      } else {
        resultado += "❌ Combustível insuficiente!\n";
      }
    });
  }

  void calcularTudo() {
    resultado = "";
    calcularTempo();
    calcularCombustivel();
  }

  void limpar() {
    distanciaController.clear();
    velocidadeController.clear();
    consumoController.clear();
    combustivelController.clear();

    setState(() {
      resultado = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "EspaceCadet",
          style: TextStyle(
            color: Color.fromARGB(255, 0, 0, 0),
            fontSize: 26,
            fontStyle: FontStyle.italic,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 118, 143, 255),
        actions: const [
          Icon(Icons.rocket_launch, color: Color.fromARGB(255, 0, 0, 0)),
          SizedBox(width: 12),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: distanciaController,
              decoration: const InputDecoration(
                labelText: "Distância (km)",
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 16),

            TextField(
              controller: velocidadeController,
              decoration: const InputDecoration(
                labelText: "Velocidade (km/h)",
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 16),

            TextField(
              controller: consumoController,
              decoration: const InputDecoration(
                labelText: "Consumo (L/h)",
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 16),

            TextField(
              controller: combustivelController,
              decoration: const InputDecoration(
                labelText: "Combustível Inicial (L)",
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),

            Row(
              children: [
                ElevatedButton.icon(
                  onPressed: calcularTempo,
                  label: const Text(
                    "Tempo",
                    style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 15,
                    ),
                  ),
                ),
                const SizedBox(width: 20),

                ElevatedButton.icon(
                  onPressed: calcularCombustivel,
                  label: const Text(
                    "Combustível",
                    style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 15,
                    ),
                  ),
                ),
                const SizedBox(width: 20),


                const SizedBox(width: 20),
              ],
            ),

            const SizedBox(height: 20),

            Row(
              children: [
                ElevatedButton.icon(
                  onPressed: limpar,
                  label: const Text(
                    "Limpar",
                    style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 255, 0, 0),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 15,
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                
                ElevatedButton.icon(
                  onPressed: calcularTudo,
                  label: const Text(
                    "Calcular",
                    style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 46, 126, 0),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 15,
                    ),
                  ),
                ),
                SizedBox(height: 20),

              ],
            ),

            const SizedBox(height: 20),

            Expanded(
              child: SingleChildScrollView(
                child: Text(
                  resultado,
                  style: const TextStyle(fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}