import 'package:flutter/material.dart';

class PantallaSiete extends StatefulWidget {
  const PantallaSiete({Key? key}) : super(key: key);

  @override
  State<PantallaSiete> createState() => _PantallaSieteState();
}

class _PantallaSieteState extends State<PantallaSiete> {
  double padValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[50], // Color de fondo más suave
      appBar: AppBar(
        title: const Text(
          'Animated Padding',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
        backgroundColor:
            Colors.deepPurple[300], // Color vibrante para la AppBar
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0), // Añadir padding general alrededor
        child: Column(
          children: [
            AnimatedPadding(
              padding: EdgeInsets.all(padValue),
              duration: const Duration(seconds: 1),
              curve: Curves.bounceOut, // Curva animada
              child: ClipRRect(
                borderRadius: BorderRadius.circular(
                    12.0), // Bordes redondeados para la imagen
                child: Image.network(
                  'https://www.coe.int/documents/1155634/9685754/democracy.jpg/3d49e05e-c954-415e-bbdd-2c7626be6d9a?t=1393948322000',
                  fit: BoxFit.cover, // Asegura que la imagen se ajuste bien
                ),
              ),
            ),
            const SizedBox(
                height: 20), // Separación entre la imagen y los botones
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.center, // Centrar los botones
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      padValue = 50;
                    });
                  },
                  icon: const Icon(
                    Icons.zoom_out,
                    color: Colors.blue,
                    size: 30,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      padValue = 0;
                    });
                  },
                  icon: const Icon(
                    Icons.zoom_in,
                    color: Colors.blue,
                    size: 30,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20), // Espacio entre los botones y el texto
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                '''Cow, in common parlance, a domestic bovine, regardless of sex and age, usually of the species Bos taurus. In precise usage, the name is given to mature females of several large mammals, including cattle (bovines), moose, elephants, sea lions, and whales.
                ''',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
