import 'package:flutter/material.dart';

class ElevatedButtonECA extends StatelessWidget {
  final String? text;
  final Color textColor, buttonColor, borderColor;
  final double borderWidth;
  final VoidCallback? onPressed;
  final Widget? icon;
  final Color? iconColor;
  final double width;

  ElevatedButtonECA({
    this.text,
    this.textColor: Colors.white,
    this.buttonColor: Colors.blue,
    this.borderColor: Colors.indigo,
    this.borderWidth: 0,
    this.icon,
    this.iconColor: Colors.white,
    required this.onPressed,
    this.width: double.infinity,
  }) : assert(text != null || icon != null);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints.tightFor(
        width: width,
        height: 48,
      ),
      child: ElevatedButton.icon(
        icon: icon ?? Container(),
        label: Text(
          text ?? '',
          style: TextStyle(
            color: textColor,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        style: ElevatedButton.styleFrom(
          primary: buttonColor,
          shape: const BeveledRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(5),
            ),
          ),
          side: BorderSide(
              color: (borderWidth != 0) ? borderColor : Colors.transparent,
              width: borderWidth),
        ),
        onPressed: onPressed,
      ),
    );
  }
}
