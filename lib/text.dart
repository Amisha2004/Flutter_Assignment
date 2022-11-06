import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  // ignore: non_constant_identifier_names
  final String ButtonText;

  const Button(this.ButtonText, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      child: Text(
        ButtonText,
        style: const TextStyle(fontSize: 20),
        textAlign: TextAlign.center,
      ),
    );
  }
}
