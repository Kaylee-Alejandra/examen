import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PantallaNueve extends StatefulWidget {
  const PantallaNueve({Key? key}) : super(key: key);

  @override
  State<PantallaNueve> createState() => _PantallaNueveState();
}

class _PantallaNueveState extends State<PantallaNueve> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    debugPrint('The whole page is built');

    return Scaffold(
      appBar: AppBar(title: const Text('StatefulBuilder')),
      body: Center(
        child: StatefulBuilder(
          builder: (context, internalState) {
            debugPrint('StatefulBuilder is built');
            return CupertinoButton(
              onPressed: () {
                internalState(() {
                  counter++;
                });
              },
              child: Text(
                '$counter',
                style: const TextStyle(
                  fontSize: 70,
                  fontWeight: FontWeight.bold,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
