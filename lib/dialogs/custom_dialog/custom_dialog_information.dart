import 'package:eogas/core/presentation/components/dialogs/custom_dialog/components/inner_dialog_content.dart';
import 'package:eogas/core/presentation/components/dialogs/custom_dialog/components/top_circle_of_dialog.dart';
import 'package:flutter/material.dart';

class Consts {
  Consts._();

  static const double padding = 16.0;
  static const double avatarRadius = 43.0;
}

enum CustomDialogTypes { Success, Fail, Warning, Question }

// ignore: must_be_immutable
class CustomDialogInformation extends StatelessWidget {
  final String? leftButtonText,
      urlToTopImage,
      errorToCopy,
      rigthButtonText,
      urlToInnerImage;
  final Color? leftButtonColor;
  final String title;
  final Color? rightButtonColor;
  final CustomDialogTypes customDialogType;
  final VoidCallback? onLeftButtonPressed;
  final Function? onRigthButtonPressed;
  final VoidCallback? onCenterButtonPressed;
  String? description, centerButtonText;

  CustomDialogInformation({
    required this.title,
    this.rigthButtonText = 'OK',
    this.customDialogType = CustomDialogTypes.Success,
    this.rightButtonColor = Colors.lightBlueAccent,
    this.leftButtonText,
    this.leftButtonColor,
    this.urlToTopImage,
    this.onLeftButtonPressed,
    this.onRigthButtonPressed,
    this.errorToCopy,
    this.description,
    this.centerButtonText,
    this.urlToInnerImage,
    this.onCenterButtonPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Consts.padding),
      ),
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      child: _dialogContent(context),
    );
  }

  _dialogContent(BuildContext context) {
    return Stack(
      children: <Widget>[
        InnerDialogContentWidget(
          title: title,
          description: description ?? '',
          customDialogType: customDialogType,
          rigthButtonColor: rightButtonColor,
          leftButtonColor: leftButtonColor,
          onLeftButtonPressed: onLeftButtonPressed,
          leftButtonText: leftButtonText,
          rigthButtonText: rigthButtonText,
          centerButtonText: centerButtonText,
          onRigthButtonPressed: onRigthButtonPressed,
          errorToCopy: errorToCopy,
          urlToInnerImage: urlToInnerImage,
          onCenterButtonPressed: onCenterButtonPressed,
        ),
        Visibility(
          visible: urlToTopImage != null,
          child: TopCircleOfDialogWidget(
            customDialogType: customDialogType,
            urlToImage: urlToTopImage,
          ),
        ),
      ],
    );
  }
}
