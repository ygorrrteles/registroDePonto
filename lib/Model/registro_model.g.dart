// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registro_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$RegistroModel on _RegistroModelBase, Store {
  Computed<Duration> _$totalHorasComputed;

  @override
  Duration get totalHoras =>
      (_$totalHorasComputed ??= Computed<Duration>(() => super.totalHoras))
          .value;
  Computed<int> _$hotaExtraComputed;

  @override
  int get hotaExtra =>
      (_$hotaExtraComputed ??= Computed<int>(() => super.hotaExtra)).value;

  final _$idAtom = Atom(name: '_RegistroModelBase.id');

  @override
  int get id {
    _$idAtom.context.enforceReadPolicy(_$idAtom);
    _$idAtom.reportObserved();
    return super.id;
  }

  @override
  set id(int value) {
    _$idAtom.context.conditionallyRunInAction(() {
      super.id = value;
      _$idAtom.reportChanged();
    }, _$idAtom, name: '${_$idAtom.name}_set');
  }

  final _$diaAtom = Atom(name: '_RegistroModelBase.dia');

  @override
  int get dia {
    _$diaAtom.context.enforceReadPolicy(_$diaAtom);
    _$diaAtom.reportObserved();
    return super.dia;
  }

  @override
  set dia(int value) {
    _$diaAtom.context.conditionallyRunInAction(() {
      super.dia = value;
      _$diaAtom.reportChanged();
    }, _$diaAtom, name: '${_$diaAtom.name}_set');
  }

  final _$primeiraEntradaAtom =
      Atom(name: '_RegistroModelBase.primeiraEntrada');

  @override
  DateTime get primeiraEntrada {
    _$primeiraEntradaAtom.context.enforceReadPolicy(_$primeiraEntradaAtom);
    _$primeiraEntradaAtom.reportObserved();
    return super.primeiraEntrada;
  }

  @override
  set primeiraEntrada(DateTime value) {
    _$primeiraEntradaAtom.context.conditionallyRunInAction(() {
      super.primeiraEntrada = value;
      _$primeiraEntradaAtom.reportChanged();
    }, _$primeiraEntradaAtom, name: '${_$primeiraEntradaAtom.name}_set');
  }

  final _$primeiraSaidaAtom = Atom(name: '_RegistroModelBase.primeiraSaida');

  @override
  DateTime get primeiraSaida {
    _$primeiraSaidaAtom.context.enforceReadPolicy(_$primeiraSaidaAtom);
    _$primeiraSaidaAtom.reportObserved();
    return super.primeiraSaida;
  }

  @override
  set primeiraSaida(DateTime value) {
    _$primeiraSaidaAtom.context.conditionallyRunInAction(() {
      super.primeiraSaida = value;
      _$primeiraSaidaAtom.reportChanged();
    }, _$primeiraSaidaAtom, name: '${_$primeiraSaidaAtom.name}_set');
  }

  final _$segundaEntradaAtom = Atom(name: '_RegistroModelBase.segundaEntrada');

  @override
  DateTime get segundaEntrada {
    _$segundaEntradaAtom.context.enforceReadPolicy(_$segundaEntradaAtom);
    _$segundaEntradaAtom.reportObserved();
    return super.segundaEntrada;
  }

  @override
  set segundaEntrada(DateTime value) {
    _$segundaEntradaAtom.context.conditionallyRunInAction(() {
      super.segundaEntrada = value;
      _$segundaEntradaAtom.reportChanged();
    }, _$segundaEntradaAtom, name: '${_$segundaEntradaAtom.name}_set');
  }

  final _$segundaSaidaAtom = Atom(name: '_RegistroModelBase.segundaSaida');

  @override
  DateTime get segundaSaida {
    _$segundaSaidaAtom.context.enforceReadPolicy(_$segundaSaidaAtom);
    _$segundaSaidaAtom.reportObserved();
    return super.segundaSaida;
  }

  @override
  set segundaSaida(DateTime value) {
    _$segundaSaidaAtom.context.conditionallyRunInAction(() {
      super.segundaSaida = value;
      _$segundaSaidaAtom.reportChanged();
    }, _$segundaSaidaAtom, name: '${_$segundaSaidaAtom.name}_set');
  }

  final _$_RegistroModelBaseActionController =
      ActionController(name: '_RegistroModelBase');

  @override
  dynamic setId(int value) {
    final _$actionInfo = _$_RegistroModelBaseActionController.startAction();
    try {
      return super.setId(value);
    } finally {
      _$_RegistroModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setDia(int value) {
    final _$actionInfo = _$_RegistroModelBaseActionController.startAction();
    try {
      return super.setDia(value);
    } finally {
      _$_RegistroModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setPrimeiraEntrada(DateTime value) {
    final _$actionInfo = _$_RegistroModelBaseActionController.startAction();
    try {
      return super.setPrimeiraEntrada(value);
    } finally {
      _$_RegistroModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setPrimeiraSaida(DateTime value) {
    final _$actionInfo = _$_RegistroModelBaseActionController.startAction();
    try {
      return super.setPrimeiraSaida(value);
    } finally {
      _$_RegistroModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setSegundaEntrada(DateTime value) {
    final _$actionInfo = _$_RegistroModelBaseActionController.startAction();
    try {
      return super.setSegundaEntrada(value);
    } finally {
      _$_RegistroModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setSegundaSaida(DateTime value) {
    final _$actionInfo = _$_RegistroModelBaseActionController.startAction();
    try {
      return super.setSegundaSaida(value);
    } finally {
      _$_RegistroModelBaseActionController.endAction(_$actionInfo);
    }
  }
}
