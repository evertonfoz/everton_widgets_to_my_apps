import 'package:everton_widgets_to_my_apps/buttons/elevated_button.dart';
import 'package:everton_widgets_to_my_apps/dialogs/custom_dialog/show_custom_dialog.dart';
import 'package:flutter/material.dart';

class DialogsPage extends StatelessWidget {
  DialogsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButtonECA(
          text: 'Confirmar',
          width: 200,
          icon: Icon(Icons.check),
          onPressed: () =>
              showCustomDialogECA(title: 'Título', context: context),
        ),
      ),
    );
  }
}
