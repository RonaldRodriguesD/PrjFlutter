import 'package:flutter/material.dart';
import './botoes.dart';

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
  final perguntas = [
  {
    'pergunta': 'Qual a sua cor favorita?',
    'respostas': ['Verde', 'Amarelo', 'Vermelho', 'Outra'],
  },
  {
    'pergunta': 'Qual o seu animal favorito?',
    'respostas': ['Gato','Cachorro','Pássaro','Peixe','Outro'],
  },
  {
    'pergunta': 'Qual é o seu time?',
    'respostas': ['Palmeiras','Corinthians','São Paulo','Santos','Outro'],
  },
  {
  'pergunta': 'Qual é sua linguagem de programação favorita',
  'respostas': ['Python','Java','Dart','C','C++','Outro'],
  },

];

  var indicePergunta = 0;

  void responder() {
    setState(() {
      if (indicePergunta < perguntas.length - 1) {
        indicePergunta++;
      } else {
        indicePergunta = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perguntas - Ronald', style: TextStyle(fontSize: 30), textAlign: TextAlign.center),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 58, 166, 255),
        toolbarHeight: 80,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Text(
              perguntas[indicePergunta]['pergunta'].toString(),
              style: const TextStyle(fontSize: 25),
            ),
            SizedBox(height: 20,),
            ...((perguntas[indicePergunta]['respostas'] as List<String>)
            .map((textoBootao) => Botoes(resp: responder, txt: textoBootao))
            .toList()
            ),
          ],
        ),
      ),
    );
  }
}