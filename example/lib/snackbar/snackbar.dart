import 'package:everton_widgets_to_my_apps/buttons/elevated_button.dart';
import 'package:everton_widgets_to_my_apps/snackbar/snackbar.dart';
import 'package:flutter/material.dart';

class SnackBarPage extends StatelessWidget {
  SnackBarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButtonECA(
          text: 'Confirmar',
          width: 200,
          icon: Icon(Icons.check),
          onPressed: () => showBottomSnackBarECA(
            context: context,
            title: 'Title',
            content: 'Content',
          ),
        ),
      ),
    );
  }
}
