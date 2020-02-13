import 'package:controleponto/Controller/PaginaController.dart';
import 'package:controleponto/Model/registro_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:intl/intl.dart';

class FolhaDePonto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = GetIt.I.get<PaginaController>();

    return Column(
      children: <Widget>[
        SizedBox(
          height: 10,
          // hh-mm-ss 08:45:20 // 08:37:40 ->
        ),
        IconButton(
          onPressed: () {
            controller.addRegistro(context);
          },
          icon: Icon(Icons.fingerprint),
        ),
        Observer(
          builder: (_) {
            return Expanded(
              child: ListView.builder(
                padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.02,
                ),
                itemCount: controller.listRegistro.length,
                itemBuilder: (_, i) {
                  var registro = controller.listRegistro.reversed.toList()[i];
                  return _registroPonto(
                    context: context,
                    registro: registro,
                    funcaoExcluir: () => controller.removeRegistro(registro),
                    funcaoEditar: () =>
                        _showDialog(context, registro, controller),
                  );
                },
              ),
            );
          },
        )
      ],
    );
  }
}

Widget _registroPonto({
  BuildContext context,
  RegistroModel registro,
  final Function funcaoExcluir,
  final Function funcaoEditar,
}) {
  return Observer(
    builder: (_) {
      return Container(
        margin: EdgeInsets.only(bottom: 10),
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: BoxDecoration(
          color: Colors.blueAccent,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(.5),
              blurRadius: 20.0, // soften the shadow
              spreadRadius: 0.0, //extend the shadow
              offset: Offset(
                5.0, // Move to right 10  horizontally
                5.0, // Move to bottom 10 Vertically
              ),
            )
          ],
        ),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      color: Colors.redAccent, shape: BoxShape.circle),
                  child: Center(
                    child: Text(registro.dia.toString()),
                  ),
                ),
                _container(
                  context: context,
                  periodo: "Primeiro",
                  horaEntrada: DateFormat('HH:mm:ss').format(registro.primeiraEntrada),
                  horaSaida: DateFormat('HH:mm:ss').format(registro?.primeiraSaida)
                ),
                _container(
                  context: context,
                  periodo: "Segundo",
                  horaEntrada: DateFormat('HH:mm:ss').format(registro.segundaEntrada),
                  horaSaida: DateFormat('HH:mm:ss').format(registro.segundaSaida),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      width: 40,
                      child: FlatButton(
                        padding: EdgeInsets.zero,
                        onPressed: funcaoEditar,
                        child: Icon(Icons.edit),
                      ),
                    ),
                    Container(
                      width: 40,
                      child: FlatButton(
                        padding: EdgeInsets.zero,
                        onPressed: funcaoExcluir,
                        child: Icon(Icons.delete_forever),
                      ),
                    ),
                  ],
                ),
                Container(
                  child: Column(
                    children: <Widget>[
                      Text("Total Horas"),
                      Text("${registro.totalHoras.inHours}"),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: <Widget>[
                      Text("Horas Extras"),
                      Text("${registro.hotaExtra}"),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    },
  );
}

Widget _container({
  BuildContext context,
  String periodo,
  String horaEntrada,
  String horaSaida,
}) {
  return Container(
    width: MediaQuery.of(context).size.width / 3.5,
    child: Column(
      children: <Widget>[
        Text("$periodo período"),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text("Entrada"),
            Text(horaEntrada),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text("Saida"),
            Text(horaSaida),
          ],
        ),
      ],
    ),
  );
}

void _showDialog(
    BuildContext context, RegistroModel registro, PaginaController controller) {
  final _formKey = GlobalKey<FormState>();
  TextEditingController primeiraEntrada = TextEditingController();
  TextEditingController primeiraSaida = TextEditingController();
  TextEditingController segundaEntrada = TextEditingController();
  TextEditingController segundaSaida = TextEditingController();
  primeiraEntrada.text = DateFormat('HH:mm:ss').format(registro.primeiraEntrada);
  primeiraSaida.text = DateFormat('HH:mm:ss').format(registro.primeiraSaida);
  segundaEntrada.text = DateFormat('HH:mm:ss').format(registro.segundaEntrada);
  segundaSaida.text = DateFormat('HH:mm:ss').format(registro.segundaSaida);

  showDialog(
    context: context,
    builder: (BuildContext context) {
      // return object of type Dialog
      return SingleChildScrollView(
        child: AlertDialog(
          title: new Text("Editar Lançamentos"),
          content: Form(
            key: _formKey,
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text("Primeiro Período"),
                Observer(
                  builder: (_) {
                    return campoDeTexto(
                      controller: primeiraEntrada,
                      label: "Entrada",
                      errorText: controller.validarData(primeiraEntrada.text),
                    );
                  },
                ),
                campoDeTexto(
                  controller: primeiraSaida,
                  label: "Saida",
                  errorText: null,
                ),
                SizedBox(
                  height: 20,
                ),
                Text("Segundo Período"),
                campoDeTexto(
                  controller: segundaEntrada,
                  label: "Entrada",
                  errorText: null,
                ),
                campoDeTexto(
                  controller: segundaSaida,
                  label: "Saida",
                  errorText: null,
                ),
              ],
            ),
          ),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            FlatButton(
              child: Text("Fechar"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            FlatButton(
              child: Text("Salvar"),
              onPressed: () {
                if (1 == 1) {
                  controller.editarRegistro(
                      registro: registro,
                      primeiraEntrada: primeiraEntrada.text,
                      primeiraSaida: primeiraSaida.text,
                      segundaEntrada: segundaEntrada.text,
                      segundaSaida: segundaSaida.text);
                  Navigator.of(context).pop();
                }
              },
            ),
          ],
        ),
      );
    },
  );
}

Widget campoDeTexto(
    {TextEditingController controller,
    String label,
    String errorText}) {
  var maskFormatter = new MaskTextInputFormatter(
      mask: '##:##:##', filter: {"#": RegExp(r'[0-9]')});

  return TextField(
    decoration: InputDecoration(
      hintText: "00:00:00",
      errorText: errorText,
      labelText: label,
    ),
    inputFormatters: [maskFormatter],
    controller: controller,
    keyboardType: TextInputType.number,
  );
}
