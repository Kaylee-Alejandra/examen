import 'package:flutter/material.dart';

class PantallaOcho extends StatefulWidget {
  const PantallaOcho({Key? key}) : super(key: key);

  @override
  State<PantallaOcho> createState() => _PantallaOchoState();
}

class _PantallaOchoState extends State<PantallaOcho>
    with SingleTickerProviderStateMixin {
  AnimationController? _controller;
  Animation<double>? _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    )..repeat(reverse: true);
    _animation = CurvedAnimation(parent: _controller!, curve: Curves.easeIn);
  }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[50], // Fondo suave
      appBar: AppBar(
        title: const Text(
          'Fade Transition',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
        backgroundColor:
            Colors.deepPurple[300], // Un tono atractivo para la AppBar
      ),
      body: Center(
        child: FadeTransition(
          opacity: _animation!,
          child: Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              color: Colors
                  .deepPurple[400], // Color más vibrante para el contenedor
              borderRadius: BorderRadius.circular(20), // Bordes redondeados
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3), // Sombra sutil para el contenedor
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
