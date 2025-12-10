import 'package:flutter/material.dart';

class Itens extends StatelessWidget {
  final String pergunta;
  final String resposta;

  const Itens({super.key, required this.pergunta, required this.resposta});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        margin: const EdgeInsets.symmetric(vertical: 8),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                pergunta,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 58, 84, 255),
                ),
              ),
              Text(
                resposta.toUpperCase(),
                style: TextStyle(fontSize: 20)
              ),
              SizedBox(height: 18),
            ],
          ),
        ),
      ),
    );
  }
}
