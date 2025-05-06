import 'package:flutter/material.dart';
import 'package:luevano/pagina_uno.dart';
import 'package:luevano/SliverAppBar.dart';
import 'package:luevano/placeholder.dart';
import 'package:luevano/slider.dart';
import 'package:luevano/rotated_box.dart';
import 'package:luevano/choice_chip.dart';
import 'package:luevano/animated_padding.dart';
import 'package:luevano/fade_transition.dart';
import 'package:luevano/stateful_builder.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "XD",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.deepPurple,
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const FirstScreen(),
        '/second': (context) => const PantallaDos(),
        '/tercera': (context) => const PantallaTres(),
        '/cuarta': (context) => const PantallaCuatro(),
        '/quinta': (context) => const PantallaCinco(),
        '/sexta': (context) => const PantallaSeis(),
        '/septima': (context) => const PantallaSiete(),
        '/octava': (context) => const PantallaOcho(),
        '/novena': (context) => const PantallaNueve(),
      }, // Este es el último corchete de cierre correcto
    );
  }
}
