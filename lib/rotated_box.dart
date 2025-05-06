import 'package:flutter/material.dart';

class PantallaCuatro extends StatelessWidget {
  const PantallaCuatro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[50],
      appBar: AppBar(
        title: const Text('Rotated Box'),
        backgroundColor: Colors.deepPurple,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: Image.network(
                'https://www.coe.int/documents/1155634/9685754/democracy.jpg/3d49e05e-c954-415e-bbdd-2c7626be6d9a?t=1393948322000',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RotatedBox(
                quarterTurns: 3,
                child: Container(
                  color: Colors.black,
                  padding:
                      const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
                  child: const Text(
                    'Challenges of democracy',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: const Text(
                    '      Fifty years ago, the dominant concern of citizens and observers alike was about the economic future of newly independent Bangladesh. Five decades later, a poverty-stricken, disaster-prone vulnerable economy has confounded observers at home and abroad alike by scripting a remarkable story of economic transformation and resilience. The achievements came neither overnight nor by the efforts of any single quarter. But the change has been real, and the country today has legitimately embraced a higher-level aspiration of middle-income status within the coming decade. Progress in economic development, however, has not been mirrored in progress in political development.\n\n'
                    '      After independence, politics seemed the lesser challenge. In a twist of irony, today it is deficits in political development that are gnawing at the foundational dream of an inclusive, humane society. Representational rights have been fatally weakened as have been the institutions of accountability across the board. Such political decay is fuelling unaccountable power, rampant cronyism and systemic corruption.\n\n'
                    '      But first, a look back. The by-now commonplace statistics of Bangladesh\'s social and economic success do not do justice to the quality and depth of Bangladesh\'s transformation thus far. Five system-defining achievements stand out.',
                    style: TextStyle(fontSize: 16),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
