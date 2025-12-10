import 'package:flutter/material.dart';
import './itens.dart';

class Resultado extends StatelessWidget {
  const Resultado(this.respostas, this.reiniciar, {super.key});

  final List respostas;
  final void Function() reiniciar;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Text(
            "Respostas",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 58, 84, 255)
            ),
          ),
          ...respostas.map((resp) => Itens(
              pergunta: resp['pergunta'],
              resposta: resp['resposta'],
            )
          ),
          ElevatedButton(
            onPressed: reiniciar,
            style: ElevatedButton.styleFrom(
              minimumSize: Size(
                double.infinity, double.minPositive
              ),
              padding: EdgeInsets.all(10),
              backgroundColor: Color.fromARGB(255, 58, 84, 255),
              foregroundColor: Color.fromARGB(255, 255, 255, 255),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.zero
              ),
            ),
            child: Text(
              'Reiniciar',
              style: TextStyle(
                fontSize: 25
              ),
            ),
          ),
        ],
      ),
    );
  }
}
