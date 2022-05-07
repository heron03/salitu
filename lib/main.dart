import 'package:flutter/material.dart';
import 'package:salitu/components/inicio.dart';
import 'package:salitu/components/lista_medicos.dart';
import 'package:salitu/components/lista_remedios.dart';
import 'package:salitu/components/minha_saude.dart';
import 'package:salitu/components/perfil.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          backgroundColor: Colors.white,
          primaryColor: Colors.greenAccent[400],
          appBarTheme: AppBarTheme(backgroundColor: Colors.white)),
      routes: {
        '/components/inicio': (context) => Inicio(),
        '/components/minha_saude': (context) => MinhaSaude(),
        '/components/perfil': (context) => Perfil(),
        '/components/lista_medicos': (context) => ListaMedicos(),
        '/components/lista_remedios': (context) => ListaRemedios(),
      },
      initialRoute: '/components/inicio',
    ),
  );
}
