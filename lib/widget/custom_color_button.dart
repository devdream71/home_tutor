import 'package:flutter/material.dart';

class CustomColorButton extends StatelessWidget {
  final String text;
  const CustomColorButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: () {}, child: Text(text));
  }
}
