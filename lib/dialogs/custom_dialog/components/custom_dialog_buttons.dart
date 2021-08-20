import 'package:everton_widgets_to_my_apps/buttons/elevated_button.dart';
import 'package:everton_widgets_to_my_apps/buttons/text_button.dart';
import 'package:flutter/material.dart';

import '../custom_dialog_information.dart';

class CustomDialogButtonsECA extends StatelessWidget {
  final VoidCallback? onLeftButtonPressed;
  final Function? onRigthButtonPressed;
  final VoidCallback? onCenterButtonPressed;
  final CustomDialogTypesECA customDialogType;
  final Color? rigthButtonColor;
  final Color? leftButtonColor;
  final String? leftButtonText;
  final String? rigthButtonText;
  final String? centerButtonText;
  final Color? centerButtonColor;
  final Color? centerButtonTextColor;

  CustomDialogButtonsECA({
    this.onLeftButtonPressed,
    required this.customDialogType,
    this.leftButtonColor,
    this.rigthButtonColor,
    this.leftButtonText,
    this.onRigthButtonPressed,
    this.rigthButtonText,
    this.centerButtonText,
    this.onCenterButtonPressed,
    this.centerButtonColor,
    this.centerButtonTextColor,
  }) {
    assert(_noButtonsReceived());
  }

  /// This ensures that only the right button with the text 'OK' is displayed.
  bool _noButtonsReceived() {
    return (leftButtonColor == null &&
        leftButtonText == null &&
        onRigthButtonPressed == null &&
        rigthButtonText == null &&
        onLeftButtonPressed == null);
    //   (centerButtonText != null ||
    //                 centerButtonText != null ||
    //                 onCenterButtonPressed != null ||
    //                 centerButtonTextColor != null) &&
    //             (!(leftButtonColor != null ||
    //                     rigthButtonColor != null ||
    //                     leftButtonText != null ||
    //                     onRigthButtonPressed != null ||
    //                     rigthButtonText != null) ||
    //                 (leftButtonColor == null ||
    //                     rigthButtonColor == null ||
    //                     leftButtonText == null ||
    //                     onRigthButtonPressed == null ||
    //                     rigthButtonText == null)),
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: this.centerButtonText != null
          ? MainAxisAlignment.center
          : MainAxisAlignment.end,
      children: [
        _leftButton(),
        _centerButton(context),
        _rightButton(context),
      ],
    );
  }

  _leftButton() {
    if (this.centerButtonText == null && this.onLeftButtonPressed != null) {
      return Column(
        children: [
          TextButtonECA(
            textColor: this.leftButtonColor ?? _leftButtonColor(),
            text: leftButtonText ?? '',
            onPressed:
                onLeftButtonPressed != null ? onLeftButtonPressed! : () {},
          ),
          SizedBox(
            width: 10,
          )
        ],
      );
    } else {
      return Container();
    }
  }

  _centerButton(BuildContext context) {
    if (this.centerButtonText != null) {
      return Center(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 28.0),
          child: ConstrainedBox(
            constraints: BoxConstraints.tightFor(
                width: MediaQuery.of(context).size.width * 0.6, height: 48),
            child: ElevatedButtonECA(
              buttonColor: centerButtonColor ?? Colors.blue,
              textColor: centerButtonTextColor ?? Colors.white,
              text: centerButtonText,
              onPressed: () {
                if (onCenterButtonPressed == null)
                  Navigator.of(context).pop();
                else {
                  Navigator.of(context).pop();
                  onCenterButtonPressed!();
                }
              },
            ),
          ),
        ),
      );
    } else {
      return Container();
    }
  }

  _rightButton(BuildContext context) {
    if (this.centerButtonText == null) {
      return TextButtonECA(
        textColor: this.rigthButtonColor ?? _rightButtonColor(),
        text: rigthButtonText ?? 'OK',
        onPressed: () {
          if (onRigthButtonPressed == null)
            Navigator.of(context).pop();
          else {
            onRigthButtonPressed!();
            Navigator.of(context).pop();
          }
        },
      );
    } else {
      return Container();
    }
  }

  _rightButtonColor() {
    if (customDialogType == CustomDialogTypesECA.Success)
      return Colors.green[400];
    else if (customDialogType == CustomDialogTypesECA.Fail)
      return Colors.red[900];
    else if (customDialogType == CustomDialogTypesECA.Warning)
      return Colors.yellow[400];
    else if (customDialogType == CustomDialogTypesECA.Question)
      return Colors.teal[500];
  }

  _leftButtonColor() {
    if (customDialogType == CustomDialogTypesECA.Success)
      return Colors.green[300];
    else if (customDialogType == CustomDialogTypesECA.Fail)
      return Colors.red[400];
    else if (customDialogType == CustomDialogTypesECA.Question)
      return Colors.teal[300];
  }
}
