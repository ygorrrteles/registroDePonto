// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'PaginaController.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PaginaController on PaginaControllerBase, Store {
  final _$paginaSelecionadaAtom =
      Atom(name: 'PaginaControllerBase.paginaSelecionada');

  @override
  int get paginaSelecionada {
    _$paginaSelecionadaAtom.context.enforceReadPolicy(_$paginaSelecionadaAtom);
    _$paginaSelecionadaAtom.reportObserved();
    return super.paginaSelecionada;
  }

  @override
  set paginaSelecionada(int value) {
    _$paginaSelecionadaAtom.context.conditionallyRunInAction(() {
      super.paginaSelecionada = value;
      _$paginaSelecionadaAtom.reportChanged();
    }, _$paginaSelecionadaAtom, name: '${_$paginaSelecionadaAtom.name}_set');
  }

  final _$clicadoAtom = Atom(name: 'PaginaControllerBase.clicado');

  @override
  bool get clicado {
    _$clicadoAtom.context.enforceReadPolicy(_$clicadoAtom);
    _$clicadoAtom.reportObserved();
    return super.clicado;
  }

  @override
  set clicado(bool value) {
    _$clicadoAtom.context.conditionallyRunInAction(() {
      super.clicado = value;
      _$clicadoAtom.reportChanged();
    }, _$clicadoAtom, name: '${_$clicadoAtom.name}_set');
  }

  final _$pausadoAtom = Atom(name: 'PaginaControllerBase.pausado');

  @override
  bool get pausado {
    _$pausadoAtom.context.enforceReadPolicy(_$pausadoAtom);
    _$pausadoAtom.reportObserved();
    return super.pausado;
  }

  @override
  set pausado(bool value) {
    _$pausadoAtom.context.conditionallyRunInAction(() {
      super.pausado = value;
      _$pausadoAtom.reportChanged();
    }, _$pausadoAtom, name: '${_$pausadoAtom.name}_set');
  }

  final _$nomeFlareAtom = Atom(name: 'PaginaControllerBase.nomeFlare');

  @override
  String get nomeFlare {
    _$nomeFlareAtom.context.enforceReadPolicy(_$nomeFlareAtom);
    _$nomeFlareAtom.reportObserved();
    return super.nomeFlare;
  }

  @override
  set nomeFlare(String value) {
    _$nomeFlareAtom.context.conditionallyRunInAction(() {
      super.nomeFlare = value;
      _$nomeFlareAtom.reportChanged();
    }, _$nomeFlareAtom, name: '${_$nomeFlareAtom.name}_set');
  }

  final _$animacaoFlareAtom = Atom(name: 'PaginaControllerBase.animacaoFlare');

  @override
  String get animacaoFlare {
    _$animacaoFlareAtom.context.enforceReadPolicy(_$animacaoFlareAtom);
    _$animacaoFlareAtom.reportObserved();
    return super.animacaoFlare;
  }

  @override
  set animacaoFlare(String value) {
    _$animacaoFlareAtom.context.conditionallyRunInAction(() {
      super.animacaoFlare = value;
      _$animacaoFlareAtom.reportChanged();
    }, _$animacaoFlareAtom, name: '${_$animacaoFlareAtom.name}_set');
  }

  final _$listRegistroAtom = Atom(name: 'PaginaControllerBase.listRegistro');

  @override
  ObservableList<RegistroModel> get listRegistro {
    _$listRegistroAtom.context.enforceReadPolicy(_$listRegistroAtom);
    _$listRegistroAtom.reportObserved();
    return super.listRegistro;
  }

  @override
  set listRegistro(ObservableList<RegistroModel> value) {
    _$listRegistroAtom.context.conditionallyRunInAction(() {
      super.listRegistro = value;
      _$listRegistroAtom.reportChanged();
    }, _$listRegistroAtom, name: '${_$listRegistroAtom.name}_set');
  }

  final _$PaginaControllerBaseActionController =
      ActionController(name: 'PaginaControllerBase');

  @override
  dynamic controleAnimacao() {
    final _$actionInfo = _$PaginaControllerBaseActionController.startAction();
    try {
      return super.controleAnimacao();
    } finally {
      _$PaginaControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic mudarPagina(int value) {
    final _$actionInfo = _$PaginaControllerBaseActionController.startAction();
    try {
      return super.mudarPagina(value);
    } finally {
      _$PaginaControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic addRegistro(BuildContext context) {
    final _$actionInfo = _$PaginaControllerBaseActionController.startAction();
    try {
      return super.addRegistro(context);
    } finally {
      _$PaginaControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic removeRegistro(RegistroModel registro) {
    final _$actionInfo = _$PaginaControllerBaseActionController.startAction();
    try {
      return super.removeRegistro(registro);
    } finally {
      _$PaginaControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic editarRegistro(
      {RegistroModel registro,
      String primeiraEntrada,
      String primeiraSaida,
      String segundaEntrada,
      String segundaSaida}) {
    final _$actionInfo = _$PaginaControllerBaseActionController.startAction();
    try {
      return super.editarRegistro(
          registro: registro,
          primeiraEntrada: primeiraEntrada,
          primeiraSaida: primeiraSaida,
          segundaEntrada: segundaEntrada,
          segundaSaida: segundaSaida);
    } finally {
      _$PaginaControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String validarData(String data) {
    final _$actionInfo = _$PaginaControllerBaseActionController.startAction();
    try {
      return super.validarData(data);
    } finally {
      _$PaginaControllerBaseActionController.endAction(_$actionInfo);
    }
  }
}
