import 'package:controleponto/Controller/PaginaController.dart';
import 'package:controleponto/pages/PaginaPrincipal.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

void main()  {
  GetIt getIt = GetIt.I;
  getIt.registerSingleton<PaginaController>(PaginaController());

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PaginaPrincipal(),
    );
  }
}
