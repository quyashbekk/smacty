import 'package:percent_indicator/percent_indicator.dart';

import 'package:flutter/material.dart';

class Jcard extends StatelessWidget {
  final String text;
  final double number;

  const Jcard({
    super.key,
    required this.text,
    required this.number,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.green,
        ),
        height: 165,
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: CircularPercentIndicator(
                radius: 45.0,
                lineWidth: 7.0,
                animation: true,
                percent: number,
                center: Text("${number * 100} days"),
                progressColor: Colors.blue,
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(100, 0, 0, 0),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                child: Text(
                  text,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
