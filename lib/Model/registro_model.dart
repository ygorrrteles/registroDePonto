import 'package:mobx/mobx.dart';

part 'registro_model.g.dart';

class RegistroModel = _RegistroModelBase with _$RegistroModel;

abstract class _RegistroModelBase with Store {
  _RegistroModelBase({
    this.id,
    this.dia,
    this.primeiraEntrada,
    this.primeiraSaida,
    this.segundaEntrada,
    this.segundaSaida,
  });

  @observable
  int id;

  @observable
  int dia;

  @observable
  DateTime primeiraEntrada;

  @observable
  DateTime primeiraSaida;

  @observable
  DateTime segundaEntrada;

  @observable
  DateTime segundaSaida;

  @computed
  Duration get totalHoras {
    return primeiraSaida.difference(primeiraEntrada) + segundaSaida.difference(segundaEntrada);
  }

  @computed
   int get hotaExtra{
    int horasExtras=0;
    if(totalHoras.inHours > 8){
      return horasExtras = totalHoras.inHours - 8;
    }else{
      return horasExtras;
    }
  }

  @action
  setId(int value) => id = value;

  @action
  setDia(int value) => dia = value;

  @action
  setPrimeiraEntrada(DateTime value) => primeiraEntrada = value;

  @action
  setPrimeiraSaida(DateTime value) => primeiraSaida = value;

  @action
  setSegundaEntrada(DateTime value) => segundaEntrada = value;

  @action
  setSegundaSaida(DateTime value) => segundaSaida = value;
}
