import 'package:controleponto/Controller/PaginaController.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flare_flutter/flare_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

class AdicionarRegistro extends StatefulWidget {
  @override
  _AdicionarRegistroState createState() => _AdicionarRegistroState();
}

class _AdicionarRegistroState extends State<AdicionarRegistro> {
  final controller = GetIt.I.get<PaginaController>();


  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_){
        return Column(
          children: <Widget>[
            controller.clicado == true
                ? Center(
              child: Container(
                height: 300,
                width: 300,
                child: FlareActor(
                  "assets/${controller.nomeFlare}.flr",
                  fit: BoxFit.cover,
                  animation: controller.animacaoFlare,
                  isPaused: controller.pausado,
                ),
              ),
            )
                : Column(
              children: <Widget>[
                Container(
                  height: 200,
                  width: 200,
                  child: FlatButton(
                    onPressed: () {
                      controller.addRegistro(context);
                    },
                    child: FlareActor(
                      "assets/digital.flr",
                      fit: BoxFit.cover,
                      animation: "process",
                    ),
                  ),
                ),
              ],
            )
          ],
        );
      },
    );
  }
}
