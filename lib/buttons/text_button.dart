import 'package:flutter/material.dart';

class TextButtonECA extends StatelessWidget {
  final String text;
  final Color textColor;
  final VoidCallback onPressed;
  final Color buttonColor;
  final Color primaryColor;

  TextButtonECA({
    required this.text,
    this.textColor: Colors.red,
    required this.onPressed,
    this.buttonColor: Colors.transparent,
    required this.primaryColor,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        primary: primaryColor,
        backgroundColor: buttonColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: GoogleFonts.poppins(
          fontSize: 18,
          color: textColor,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
