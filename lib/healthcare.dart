import 'package:flutter/material.dart';
import 'package:smacty/widgets/ucard.dart';

class Healthcare extends StatelessWidget {
  const Healthcare({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Healthcare'),
      ),
      body: Column(children: [
        Row(
          children: [
            Expanded(
                child: SectionCard(
                    text: 'Clinics', path: 'images/healthcare.jpg')),
            Expanded(
                child: SectionCard(
                    text: 'Stomatologies', path: 'images/healthcare.jpg')),
          ],
        ),
        Expanded(
            child:
                SectionCard(text: 'My health card', path: 'images/report.jpg')),
        SectionCard(text: 'Healthy diet tips💡', path: 'images/hlhty.jpg'),
        SectionCard(text: 'SOS', path: 'images/sos.jpg')
      ]),
    );
  }
}
