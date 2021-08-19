import 'package:everton_widgets_to_my_apps/dialogs/custom_dialog/custom_dialog_information.dart';
import 'package:flutter/material.dart';

class TopCircleOfDialogECA extends StatelessWidget {
  final CustomDialogTypesECA customDialogType;
  final String? urlToImage;

  const TopCircleOfDialogECA(
      {required this.customDialogType, required this.urlToImage});

  @override
  Widget build(BuildContext context) {
    Color avatarColor = _defineBackGroundAvatarColor();

    return Positioned(
      left: ConstsECA.padding,
      right: ConstsECA.padding,
      child: CircleAvatar(
        backgroundColor: avatarColor,
        radius: ConstsECA.avatarRadius,
        child: Image.asset(
          urlToImage!,
          fit: BoxFit.fitWidth,
          width: 70,
        ),
      ),
    );
  }

  _defineBackGroundAvatarColor() {
    if (customDialogType == CustomDialogTypesECA.Success)
      return Colors.green[900];
    else if (customDialogType == CustomDialogTypesECA.Fail)
      return Colors.orange.shade800;
    else if (customDialogType == CustomDialogTypesECA.Warning)
      return Colors.yellow[500];
    else if (customDialogType == CustomDialogTypesECA.Question)
      return Colors.teal[500];

    return Colors.blueAccent;
  }
}
