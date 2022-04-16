import 'package:flutter/material.dart';
import 'package:salitu/view/inicio.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: Color(0xFFB10D18),
      ),
      supportedLocales: [const Locale('pt', 'BR')],
      routes: {
        '/components/inicio': (context) => Inicio(),
      },
      initialRoute: '/components/inicio',
    ),
  );
}
