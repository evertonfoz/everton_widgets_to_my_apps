import 'package:eogas/core/presentation/components/dialogs/custom_dialog/custom_dialog_information.dart';
import 'package:flutter/material.dart';

class TopCircleOfDialogWidget extends StatelessWidget {
  final CustomDialogTypes customDialogType;
  final String? urlToImage;

  const TopCircleOfDialogWidget(
      {required this.customDialogType, required this.urlToImage});

  @override
  Widget build(BuildContext context) {
    Color avatarColor = _defineBackGroundAvatarColor();

    return Positioned(
      left: Consts.padding,
      right: Consts.padding,
      child: CircleAvatar(
        backgroundColor: avatarColor,
        radius: Consts.avatarRadius,
        child: Image.asset(
          urlToImage!,
          fit: BoxFit.fitWidth,
          width: 70,
        ),
      ),
    );
  }

  _defineBackGroundAvatarColor() {
    if (customDialogType == CustomDialogTypes.Success)
      return Colors.green[900];
    else if (customDialogType == CustomDialogTypes.Fail)
      return Colors.orange.shade800;
    else if (customDialogType == CustomDialogTypes.Warning)
      return Colors.yellow[500];
    else if (customDialogType == CustomDialogTypes.Question)
      return Colors.teal[500];

    return Colors.blueAccent;
  }
}
