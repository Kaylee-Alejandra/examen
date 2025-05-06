import 'package:flutter/material.dart';

class PantallaCinco extends StatelessWidget {
  const PantallaCinco({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[50], // Un color de fondo más suave
      appBar: AppBar(
        title: const Text(
          'Pantalla de Placeholders',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
        backgroundColor:
            Colors.deepPurple[300], // Color más vibrante para la app bar
      ),
      body: Padding(
        padding:
            const EdgeInsets.all(16.0), // Añadido padding para mayor espacio
        child: SingleChildScrollView(
          // Para permitir desplazamiento si es necesario
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment:
                CrossAxisAlignment.center, // Centrar los elementos
            children: [
              const SizedBox(height: 20), // Espacio superior
              const Placeholder(
                fallbackHeight: 120,
                strokeWidth: 6,
                color:
                    Colors.teal, // Color atractivo para el primer placeholder
              ),
              const SizedBox(height: 20), // Espacio entre los widgets
              const Placeholder(
                fallbackHeight: 400,
                fallbackWidth: 250,
                strokeWidth: 6,
                color:
                    Colors.pink, // Color vibrante para el segundo placeholder
              ),
              const SizedBox(height: 20),
              const Placeholder(
                fallbackHeight: 90,
                strokeWidth: 6,
                color:
                    Colors.red, // Un color diferente para el último placeholder
              ),
            ],
          ),
        ),
      ),
    );
  }
}
