import 'package:flutter/material.dart';

class PantallaDos extends StatelessWidget {
  const PantallaDos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double containerHeight = 300.0;
    const double containerPadding = 20.0;
    const BorderRadius borderRadius = BorderRadius.all(Radius.circular(20));

    Widget buildSliverContainer(Color color) {
      return SliverToBoxAdapter(
        child: Padding(
          padding: const EdgeInsets.all(containerPadding),
          child: ClipRRect(
            borderRadius: borderRadius,
            child: Container(
              height: containerHeight,
              color: color,
              child: const Center(
                child: Text(
                  'Contenido',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.deepPurple[50],
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.deepPurple,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context); // Regresar a la pantalla anterior
              },
            ),
            expandedHeight: 180,
            pinned: true,
            flexibleSpace: const FlexibleSpaceBar(
              title: Text("Sliver App Bar"),
              background: DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.pink, Colors.deepPurple],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
              ),
            ),
          ),
          buildSliverContainer(Colors.deepPurple.shade300),
          buildSliverContainer(Colors.deepPurple.shade400),
          buildSliverContainer(Colors.deepPurple.shade500),
        ],
      ),
    );
  }
}
