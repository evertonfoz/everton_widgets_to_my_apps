import 'package:everton_widgets_to_my_apps/buttons/elevated_button.dart';
import 'package:flutter/material.dart';

class ElevatedButtonPage extends StatelessWidget {
  ElevatedButtonPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButtonECA(
          text: 'Confirmar',
          width: 200,
          icon: Icon(Icons.check),
          onPressed: () {},
        ),
      ),
    );
  }
}
