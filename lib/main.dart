import 'package:flutter/material.dart';
import 'package:Zavala/pagina1.dart';
import 'package:Zavala/pagina2.dart';
import 'package:Zavala/pagina3.dart';
import 'package:Zavala/pagina4.dart';
import 'package:Zavala/pagina4_2.dart';
import 'package:Zavala/pagina4_3.dart';

import 'package:Zavala/form1.dart';
import 'package:Zavala/form2.dart';
import 'package:Zavala/form3.dart';
import 'package:Zavala/form4.dart';
import 'package:Zavala/form5.dart';

void main() {
  runApp(MaterialApp(
    title: 'Named Routes Demo',
    debugShowCheckedModeBanner: false,
    // Inicie la aplicación con la ruta con nombre. En nuestro caso, la aplicación comenzará
    // en el Widget FirstScreen
    initialRoute: '/',
    routes: {
      // Cuando naveguemos hacia la ruta "/", crearemos el Widget FirstScreen
      '/': (context) => const Pantalla1(),
      // Cuando naveguemos hacia la ruta "/second", crearemos el Widget SecondScreen
      '/segunda': (context) => const Pantalla2(),
      '/tercera': (context) => const Pantalla3(),
      '/cuarta': (context) => const Pantalla4(),

      '/cuarta2': (context) => const Pantalla6(),
      '/cuarta3': (context) => const Pantalla7(),

      '/form1': (context) => const Formulario1(),
      '/form2': (context) => const Formulario2(),
      '/form3': (context) => const Formulario3(),
      '/form4': (context) => const Formulario4(),
      '/form5': (context) => const Formulario5(),
    },
  ));
}
