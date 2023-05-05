import 'package:flutter/material.dart';

class textWidget extends StatelessWidget {
  const textWidget({required this.textVar, super.key});

  // argument that will be used once the widget is added to a parent
  final String textVar;

  @override
  Widget build(BuildContext context) {
    return Text(
      textVar,
      style: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: Colors.black54,
      ),
    );
  }
}
