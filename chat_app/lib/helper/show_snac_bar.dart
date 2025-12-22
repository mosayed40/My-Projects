import 'package:flutter/material.dart';

void showSnacBar(
  BuildContext context, {
  required String message,
  Color color = const Color(0xFF8D0101),
}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: color,
      content: Text(message, style: const TextStyle(color: Colors.white)),
    ),
  );
}
