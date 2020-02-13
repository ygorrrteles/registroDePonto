import 'package:controleponto/Controller/PaginaController.dart';
import 'package:controleponto/pages/adicionar_registro.dart';
import 'package:controleponto/pages/folha_de_ponto.dart';
import 'package:controleponto/pages/resumo_ponto.dart';
import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

class PaginaPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = GetIt.I.get<PaginaController>();

    Widget paginaSelecionada(int paginaSelecionada) {
      switch (paginaSelecionada) {
        case 0:
          return ResumoPonto();
          break;
        case 1:
          return AdicionarRegistro();
          break;
        case 2:
          return FolhaDePonto();
          break;
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Controle de Ponto"),
        centerTitle: true,
      ),
      bottomNavigationBar: FancyBottomNavigation(
        tabs: [
          TabData(iconData: Icons.home, title: "Home"),
          TabData(iconData: Icons.search, title: "Search"),
          TabData(iconData: Icons.format_list_numbered, title: "Basket"),
        ],
        initialSelection: 1,
        onTabChangedListener: controller.mudarPagina,
      ),
      body: Center(
        child: Observer(
          builder: (_) {
            return paginaSelecionada(controller.paginaSelecionada);
          },
        ),
      ),
    );
  }
}
