import 'package:flutter/material.dart';

class AppTitle extends StatelessWidget {
  final double fontSize;

  const AppTitle({super.key, this.fontSize = 28});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: 'Coffee ',
        style: TextStyle(
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
          color: Colors.brown.shade300
        ),
        children: [
          TextSpan(
            text: 'Tale',
            style: TextStyle(
               fontSize: fontSize,
                fontWeight: FontWeight.bold,
              color: Colors.amber.shade700,
            ),
          ),
        ],
      ),
    );
  }
}