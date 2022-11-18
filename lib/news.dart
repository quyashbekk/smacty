import 'package:flutter/material.dart';
import 'package:smacty/widgets/pcard.dart';

class News extends StatelessWidget {
  const News({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('News'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            SectionCard(
                text: 'Lorem ipsum dolor sit amet', path: 'images/food.jpg'),
            SectionCard(
                text: 'Consectetur adipiscing elit', path: 'images/report.jpg'),
            SectionCard(
                text: 'Cold water will be turned off',
                path: 'images/water.jpg'),
            SectionCard(
                text: 'Lorem ipsum dolor sit amet',
                path: 'images/services.jpg'),
            SectionCard(
                text: 'Consectetur adipiscing elit',
                path: 'images/transport.jpg'),
          ],
        ),
      ),
    );
  }
}
