import 'package:flutter/material.dart';
import 'package:salitu/components/inicio.dart';

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
      },
      initialRoute: '/components/inicio',
    ),
  );
}
