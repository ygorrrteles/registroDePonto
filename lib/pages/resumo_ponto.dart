import 'package:controleponto/pages/grafico_linhas.dart';
import 'package:flutter/material.dart';

class ResumoPonto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Icon(
            Icons.person,
            size: 150,
            color: Colors.blueAccent,
          ),
          Text(
            "Ygor Coelho",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "Desenvolvedor de Gambiras",
            style: TextStyle(
              fontSize: 12,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Memora Processos Inovadores",
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            color: Colors.black12,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                _resumos(
                  context: context,
                  chave: "Horas Extras",
                  valor: "12",
                ),
                _resumos(
                  context: context,
                  chave: "Horas Semanais",
                  valor: "38",
                ),
                _resumos(
                  context: context,
                  chave: "Dias de Folga",
                  valor: "2",
                ),
              ],
            ),
          ),
          Container(
            height: 200,
            child: GraficoLinhas(
              GraficoLinhas.createSampleData(),
              // Disable animations for image tests.
              animate: true,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "HISTORICO DE HORAS TRABALHADAS",
            style: TextStyle(
              fontSize: 16,
            ),
          ),

        ],
      ),
    );
  }
}

Widget _resumos({BuildContext context, String chave, String valor}) {
  return Column(
    children: <Widget>[
      Container(
        height: 40,
        width: 40,
        child: Center(
          child: Icon(Icons.hourglass_empty),
        ),
      ),
      Text(valor),
      Text(chave),
    ],
  );
}
