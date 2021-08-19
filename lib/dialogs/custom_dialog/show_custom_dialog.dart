import 'package:everton_widgets_to_my_apps/dialogs/custom_dialog/custom_dialog_information.dart';
import 'package:flutter/material.dart';

showCustomDialogECA({
  required String title,
  required BuildContext context,
  String? description,
  String? urlToCircleImage,
  String? urlToInnerImage,
  String? errorToCopy,
  CustomDialogTypesECA? customDialogType,
  String? leftButtonText,
  String? rigthButtonText,
  String? centerButtonText,
  VoidCallback? onLeftButtonPressed,
  Function? onRightButtonPressed,
  VoidCallback? onCenterButtonPressed,
  Color? leftButtonColor,
  Color? rightButtonColor,
}) async {
  assert(((leftButtonText != null && onLeftButtonPressed != null) ||
          (leftButtonText == null && onLeftButtonPressed == null)) ||
      (leftButtonText == null && rigthButtonText == null) &&
          centerButtonText != null);
  // print(errorToCopy);
  showDialog(
    barrierDismissible: false,
    context: context,
    builder: (BuildContext context) => CustomDialogInformationECA(
      title: title,
      description: description,
      urlToTopImage: urlToCircleImage,
      customDialogType: customDialogType ?? CustomDialogTypesECA.Success,
      leftButtonText: leftButtonText,
      rigthButtonText: rigthButtonText,
      onLeftButtonPressed: onLeftButtonPressed,
      onRigthButtonPressed: onRightButtonPressed,
      errorToCopy: errorToCopy,
      leftButtonColor: leftButtonColor,
      rightButtonColor: rightButtonColor,
      centerButtonText: centerButtonText,
      urlToInnerImage: urlToInnerImage,
      onCenterButtonPressed: onCenterButtonPressed,
    ),
  );
}
