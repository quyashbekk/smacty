import 'package:flutter/material.dart';
import 'package:smacty/widgets/ucard.dart';

class Transport extends StatelessWidget {
  const Transport({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transport'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.amber,
              child: Column(
                children: [
                  Row(children: [
                    Expanded(
                      child: SectionCard(
                          text: 'Metro', path: 'images/transport.jpg'),
                    ),
                    Expanded(
                        child: SectionCard(
                      text: 'Bus',
                      path: 'images/transport.jpg',
                    ))
                  ]),
                  Expanded(
                      child: SectionCard(text: 'Taxi', path: 'images/food.jpg'))
                ],
              ),
            ),
          ),
          Expanded(
            child: Image.asset('images/map.png'),
          )
        ],
      ),
    );
  }
}
