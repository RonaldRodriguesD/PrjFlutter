import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/physics.dart';

void main() {
  runApp(const PerguntasApp());
}

class PerguntasApp extends StatelessWidget {
  const PerguntasApp({super.key});
  
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perguntas'),
        centerTitle: true,
      ),

      body: Column(
        children: [
          Text('Pergunta 1'),
          ElevatedButton(
            onPressed: (){},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              alignment: Alignment.center
            ),

            child: Text(
              "Resposta1", 
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold
              )
            ),
          )
        ],
      )
    );
  }
}