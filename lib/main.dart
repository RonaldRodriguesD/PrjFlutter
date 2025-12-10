import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import './lista_perguntas.dart';
import './dados.dart';
import './pergunta_respostas.dart';
import './resultado.dart';

void main() {
  runApp(const PerguntasApp());
}

class PerguntasApp extends StatelessWidget {
  const PerguntasApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: const Home());
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  final dados = perguntasRespostas;
  List respostas = [];

  var indicePergunta = 0;

  void responder(String r) {
    String p = dados[indicePergunta].pergunta;
    respostas.add({'pergunta': p, 'resposta': r});
    indicePergunta++;
    setState(() {});
  }

  void reiniciar() {
    setState(() {
      indicePergunta = 0;
      respostas = [];
    });
  }

  bool get temPergunta {
    return indicePergunta < dados.length;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Perguntas - Ronald',
          style: TextStyle(fontSize: 30),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 58, 166, 255),
        toolbarHeight: 80,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: temPergunta
            ? ListaPerguntas(
                indicePergunta: indicePergunta,
                perguntas: dados,
                responder: responder,
              ) // lista perguntas
            : Resultado(respostas, reiniciar),
      ),
    );
  }
}
