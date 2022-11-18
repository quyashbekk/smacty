import 'package:flutter/material.dart';
import 'package:smacty/widgets/jcard.dart';

class Utilities extends StatelessWidget {
  const Utilities({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Utilities'),
      ),
      body: Column(
        children: [
          Row(
            children: const [
              Expanded(
                child: Jcard(
                  text: 'Electricity',
                  number: 0.34,
                ),
              ),
              Expanded(
                child: Jcard(
                  text: 'Water',
                  number: 0.74,
                ),
              ),
            ],
          ),
          Row(
            children: const [
              Expanded(
                child: Jcard(
                  text: 'Gas',
                  number: 0.42,
                ),
              ),
              Expanded(
                child: Jcard(
                  text: 'Fines',
                  number: 0.23,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
