import 'package:flutter/material.dart';

class Report extends StatelessWidget {
  const Report({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('Report'),
      ),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Problem area',
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.all(20),
          height: 10 * 24.0,
          child: TextField(
            maxLines: 10,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Problem description',
            ),
          ),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: ElevatedButton(
                  onPressed: () {}, child: Text('Upload a file')),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 190),
              child: ElevatedButton(onPressed: () {}, child: Text('Submit')),
            )
          ],
        )
      ]),
    );
  }
}
