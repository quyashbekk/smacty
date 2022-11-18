import 'package:flutter/material.dart';

class Scard extends StatelessWidget {
  final String text;
  final String icon;
  final MaterialColor col;

  const Scard({
    super.key,
    required this.text,
    required this.icon,
    required this.col,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, right: 10, left: 10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: col,
        ),
        height: 125,
        child: Row(
          children: [
            Expanded(
              child: Image.asset(icon),
            ),
            Expanded(
              flex: 2,
              child: Center(
                child: Text(
                  text,
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
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
