import 'package:everton_widgets_to_my_apps/buttons/elevated_button.dart';
import 'package:everton_widgets_to_my_apps/buttons/text_button.dart';
import 'package:flutter/material.dart';

import '../custom_dialog_information.dart';

class CustomDialogButtonsWidget extends StatelessWidget {
  final VoidCallback? onLeftButtonPressed;
  final Function? onRigthButtonPressed;
  final VoidCallback? onCenterButtonPressed;
  final CustomDialogTypes customDialogType;
  final Color? rigthButtonColor;
  final Color? leftButtonColor;
  final String? leftButtonText;
  final String? rigthButtonText;
  final String? centerButtonText;

  CustomDialogButtonsWidget({
    this.onLeftButtonPressed,
    required this.customDialogType,
    this.leftButtonColor,
    this.rigthButtonColor,
    this.leftButtonText,
    this.onRigthButtonPressed,
    this.rigthButtonText,
    this.centerButtonText,
    this.onCenterButtonPressed,
  });

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
    return Visibility(
      visible: this.onLeftButtonPressed != null,
      child: Column(
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
      ),
    );
  }

  _centerButton(BuildContext context) {
    return Visibility(
      visible: this.centerButtonText != null,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 28.0),
          child: ConstrainedBox(
            constraints: BoxConstraints.tightFor(
                width: MediaQuery.of(context).size.width * 0.6, height: 48),
            child: ElevatedButtonECA(
              buttonColor: kSecondaryColor,
              textColor: kPrimaryColor,
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
      ),
    );
  }

  _rightButton(BuildContext context) {
    return Visibility(
      visible: this.rigthButtonText != null,
      child: DefaultTextButton(
        textColor: this.leftButtonColor ?? _rightButtonColor(),
        text: rigthButtonText ?? 'OK',
        onPressed: () {
          if (onRigthButtonPressed == null)
            Navigator.of(context).pop();
          else {
            onRigthButtonPressed!();
            Navigator.of(context).pop();
          }
        },
      ),
    );
  }

  _rightButtonColor() {
    if (customDialogType == CustomDialogTypes.Success)
      return Colors.green[400];
    else if (customDialogType == CustomDialogTypes.Fail)
      return Colors.red[900];
    else if (customDialogType == CustomDialogTypes.Warning)
      return Colors.yellow[400];
    else if (customDialogType == CustomDialogTypes.Question)
      return Colors.teal[500];
  }

  _leftButtonColor() {
    if (customDialogType == CustomDialogTypes.Success)
      return Colors.green[300];
    else if (customDialogType == CustomDialogTypes.Fail)
      return Colors.red[400];
    else if (customDialogType == CustomDialogTypes.Question)
      return Colors.teal[300];
  }
}
