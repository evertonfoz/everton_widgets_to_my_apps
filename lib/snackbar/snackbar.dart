import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void showBottomSnackBarECA({
  bool persistent = true,
  EdgeInsets margin = EdgeInsets.zero,
  required BuildContext context,
  int durationSeconds = 2,
  required String title,
  required String content,
  Color? borderColor,
  Color? textColor,
}) {
  showFlash(
    context: context,
    // persistent: persistent,
    duration: Duration(seconds: durationSeconds),
    builder: (_, controller) {
      return Flash(
        barrierDismissible: false,
        controller: controller,
        margin: margin,
        behavior: FlashBehavior.fixed,
        position: FlashPosition.bottom,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(8),
          topRight: Radius.circular(8),
        ),
        borderColor: borderColor ?? Colors.black,
        backgroundColor: borderColor ?? Colors.black,
        forwardAnimationCurve: Curves.easeInCirc,
        reverseAnimationCurve: Curves.bounceIn,
        child: DefaultTextStyle(
          style: GoogleFonts.poppins(color: textColor ?? Colors.white),
          child: FlashBar(
            padding: EdgeInsets.all(25),
            title: Text(
              title,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            content: Text(
              content,
              style: TextStyle(fontSize: 20),
            ),
            indicatorColor: Colors.red,
            icon: Icon(
              Icons.info_outline,
              color: textColor ?? Colors.white,
              size: 40,
            ),
            // primaryAction: TextButton(
            //   onPressed: () => controller.dismiss(),
            //   child: Text('DISMISS'),
            // ),
            // actions: <Widget>[
            //   TextButton(
            //       onPressed: () => controller.dismiss('Yes, I do!'),
            //       child: Text('YES')),
            //   TextButton(
            //       onPressed: () => controller.dismiss('No, I do not!'),
            //       child: Text('NO')),
            // ],
          ),
        ),
      );
    },
  ).then((_) {
    if (_ != null) {
      _showMessage(message: _.toString(), context: context);
    }
  });
}

void _showMessage({required String message, required BuildContext context}) {
  showFlash(
      context: context,
      duration: Duration(seconds: 3),
      builder: (_, controller) {
        return Flash(
          controller: controller,
          position: FlashPosition.top,
          behavior: FlashBehavior.fixed,
          child: FlashBar(
            icon: Icon(
              Icons.face,
              size: 36.0,
              color: Colors.black,
            ),
            content: Text(message),
          ),
        );
      });
}
