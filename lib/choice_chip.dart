import 'package:flutter/material.dart';

class PantallaSeis extends StatefulWidget {
  const PantallaSeis({Key? key}) : super(key: key);

  @override
  State<PantallaSeis> createState() => _PantallaSeisState();
}

class _PantallaSeisState extends State<PantallaSeis> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[50], // Color de fondo más suave
      appBar: AppBar(
        title: const Text(
          'Choice Chip',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
        backgroundColor:
            Colors.deepPurple[300], // Un tono vibrante para la app bar
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0), // Añadir espaciado alrededor
          child: ChoiceChip(
            avatar: const Icon(
              Icons.ac_unit,
              color: Colors.white,
            ),
            label: const Text(
              'Choice Chip',
              style: TextStyle(
                color: Colors.white, // Color del texto en el chip
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            selected: _isSelected,
            selectedColor: Colors.teal, // Color cuando está seleccionado
            backgroundColor: Colors.pink, // Color cuando no está seleccionado
            onSelected: (newBoolValue) {
              setState(() {
                _isSelected = newBoolValue;
              });
            },
          ),
        ),
      ),
    );
  }
}
