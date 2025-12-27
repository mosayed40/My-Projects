import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.textButton,
    required this.onPressed,
  });
  final String textButton;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        minimumSize: Size(double.infinity, 50),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        backgroundColor: Colors.blue[300],
        padding: EdgeInsets.symmetric(vertical: 0),
      ),
      child: Text(
        textButton,
        style: TextStyle(fontSize: 18, color: Colors.black),
      ),
    );
  }
}
