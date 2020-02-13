import 'package:controleponto/Model/registro_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import 'package:mobx/mobx.dart';
import 'package:toast/toast.dart';

part 'PaginaController.g.dart';

class PaginaController = PaginaControllerBase with _$PaginaController;

abstract class PaginaControllerBase with Store {
  @observable
  int paginaSelecionada = 1;
  static int listaId = 4;
  static int ano = DateTime.now().year;
  static int mes = DateTime.now().month;
  static int dia = DateTime.now().day;
  static int hora = DateTime.now().hour;
  static int minutos = DateTime.now().minute;
  static int segundos = DateTime.now().second;
  var dataZero = DateTime.utc(ano, mes, dia, 0, 0, 0);

  @observable
  bool clicado = false;

  @observable
  bool pausado = false;

  @observable
  String nomeFlare;

  @observable
  String animacaoFlare;

  @action
  controleAnimacao() {
    clicado = true;
    Future.delayed(Duration(seconds: 2)).then(
      (response) {
        pausado = true;
      },
    );
    Future.delayed(Duration(seconds: 3)).then(
      (response) {
        clicado = false;
        pausado = false;
      },
    );
  }

  @action
  mudarPagina(int value) => paginaSelecionada = value;

  @observable
  ObservableList<RegistroModel> listRegistro = [
    RegistroModel(
      id: 1,
      dia: 1,
      primeiraEntrada: DateTime.now(),
      primeiraSaida: DateTime.now(),
      segundaEntrada: DateTime.now(),
      segundaSaida: DateTime.now(),
    ),
    RegistroModel(
      id: 2,
      dia: 2,
      primeiraEntrada: DateTime.now(),
      primeiraSaida: DateTime.now(),
      segundaEntrada: DateTime.now(),
      segundaSaida: DateTime.now(),
    ),
    RegistroModel(
      id: 3,
      dia: 3,
      primeiraEntrada: DateTime.now(),
      primeiraSaida: DateTime.now(),
      segundaEntrada: DateTime.now(),
      segundaSaida: DateTime.now(),
    ),
  ].asObservable();

  @action
  addRegistro(BuildContext context) {
    DateTime agora = DateTime.now();
    RegistroModel registro = new RegistroModel();
    RegistroModel ultimoRegistro;

    nomeFlare = "check";
    animacaoFlare = "Untitled";

    if (listRegistro.length != 0) {
      ultimoRegistro = listRegistro.last;
    } else {
      ultimoRegistro = new RegistroModel();
    }
    if (ultimoRegistro.dia != agora.day) {
      registro.id = listaId++;
      registro.dia = agora.day;
      registro.primeiraEntrada = agora;
      registro.primeiraSaida = dataZero;
      registro.segundaEntrada = dataZero;
      registro.segundaSaida = dataZero;
      listRegistro.add(registro);
    }

    if (ultimoRegistro.dia == agora.day) {
      if (ultimoRegistro.primeiraSaida.hour == 0) {
        ultimoRegistro.setPrimeiraSaida(agora);
      } else if (ultimoRegistro.segundaEntrada.hour == 0) {
        ultimoRegistro.setSegundaEntrada(agora);
      } else if (ultimoRegistro.segundaSaida.hour == 0) {
        ultimoRegistro.setSegundaSaida(agora);
      } else {
        Toast.show("Já foi realizado 4 registros hoje!!!", context,
            duration: Toast.LENGTH_LONG, gravity: Toast.BOTTOM);
        nomeFlare = "failed_animation";
        animacaoFlare = "base_animation";
      }
    }
    controleAnimacao();
  }

  @action
  removeRegistro(RegistroModel registro) {
    listRegistro.removeWhere((item) => item.id == registro.id);
  }

  @action
  editarRegistro({
    RegistroModel registro,
    String primeiraEntrada,
    String primeiraSaida,
    String segundaEntrada,
    String segundaSaida,
  }) {
    registro.setPrimeiraEntrada(converterStringParaDateTime(primeiraEntrada));
    registro.setPrimeiraSaida(converterStringParaDateTime(primeiraSaida));
    registro.setSegundaEntrada(converterStringParaDateTime(segundaEntrada));
    registro.setSegundaSaida(converterStringParaDateTime(segundaSaida));
  }

  DateTime converterStringParaDateTime(String dataHora) {
    var dataHoraSplit = dataHora.split(":");
    int horaDataHoraSplit = int.parse(dataHoraSplit[0]);
    int minutoDataHoraSplit = int.parse(dataHoraSplit[1]);
    int segundoDataHoraSplit = int.parse(dataHoraSplit[2]);

    var data = DateTime.utc(
        0, 0, 0, horaDataHoraSplit, minutoDataHoraSplit, segundoDataHoraSplit);
    return data;
  }

  @action
  String validarData(String data) {
    var dataMap = data.split(":");
    int hora = int.tryParse(dataMap[0]);
    int minuto = int.tryParse(dataMap[1]);
    int segundo = int.tryParse(dataMap[2]);

    if (hora > 23) {
      return "Hora invalida";
    } else {
      return null;
    }
  }
}
