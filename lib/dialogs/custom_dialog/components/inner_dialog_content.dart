import 'package:eogas/core/presentation/components/dialogs/custom_dialog/components/custom_dialog_buttons.dart';
import 'package:eogas/core/presentation/components/dialogs/custom_dialog/components/error_to_copy_to_team.dart';
import 'package:eogas/core/presentation/components/dialogs/custom_dialog/custom_dialog_information.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class InnerDialogContentWidget extends StatelessWidget {
  final String title;
  final CustomDialogTypes customDialogType;
  final String? errorToCopy;
  String? description;
  String? urlToTopImage;
  String? urlToInnerImage;

  ///Vai para Buttons
  final VoidCallback? onLeftButtonPressed;
  final VoidCallback? onCenterButtonPressed;
  final Function? onRigthButtonPressed;
  final Color? rigthButtonColor;
  final Color? leftButtonColor;
  final String? leftButtonText;
  final String? rigthButtonText;
  final String? centerButtonText;

  InnerDialogContentWidget({
    required this.title,
    required this.customDialogType,
    this.description,
    this.rigthButtonText,
    this.onRigthButtonPressed,
    this.leftButtonText,
    this.rigthButtonColor,
    this.leftButtonColor,
    this.onLeftButtonPressed,
    this.errorToCopy,
    this.centerButtonText,
    this.urlToTopImage,
    this.urlToInnerImage,
    this.onCenterButtonPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: Consts.avatarRadius + Consts.padding,
        bottom: Consts.padding,
        left: Consts.padding,
        right: Consts.padding,
      ),
      margin: EdgeInsets.only(top: Consts.avatarRadius),
      decoration: new BoxDecoration(
        color: Colors.white,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(Consts.padding),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            offset: const Offset(0.0, 10.0),
          ),
        ],
      ),
      child: _innerContent(),
    );
  }

  _innerContent() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        _topImage(),
        _innerImage(),
        _titleDescription(
            message: title,
            fontSize: 24,
            fontWeight: FontWeight.w700,
            textAlign: TextAlign.center),
        SizedBox(height: 16),
        _titleDescription(
            message: description, fontSize: 16, textAlign: TextAlign.center),
        SizedBox(height: 24),
        CustomDialogButtonsWidget(
          customDialogType: customDialogType,
          onRigthButtonPressed: onRigthButtonPressed,
          rigthButtonText: rigthButtonText,
          leftButtonText: leftButtonText,
          onLeftButtonPressed: onLeftButtonPressed,
          leftButtonColor: leftButtonColor,
          rigthButtonColor: rigthButtonColor,
          centerButtonText: centerButtonText,
          onCenterButtonPressed: onCenterButtonPressed,
        ),
        Visibility(
          visible: errorToCopy != null,
          child: Divider(
            color: Colors.black,
          ),
        ),
        ErrorToCopyToTeamWidget(errorToCopy: errorToCopy),
      ],
    );
  }

  _topImage() {
    if (urlToTopImage == null) return Container();

    return Image.asset(urlToTopImage!);
  }

  _innerImage() {
    if (urlToInnerImage == null) return Container();

    return Padding(
      padding: const EdgeInsets.only(bottom: 28.0),
      child: Image.asset(urlToInnerImage!),
    );
  }

  _titleDescription(
      {String? message,
      required double fontSize,
      TextAlign? textAlign,
      FontWeight? fontWeight}) {
    return Text(
      message ?? '',
      textAlign: textAlign,
      style: GoogleFonts.poppins(
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
    );
  }
}
