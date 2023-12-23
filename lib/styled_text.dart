import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText(String text, {super.key}) : textDegiskeni = text;

  final String textDegiskeni;

  @override
  Widget build(context) {
    return Text(
      textDegiskeni,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 24,
      ),
    );
  }
}
