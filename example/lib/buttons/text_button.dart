import 'package:everton_widgets_to_my_apps/buttons/text_button.dart';
import 'package:flutter/material.dart';

class TextButtonPage extends StatelessWidget {
  TextButtonPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButtonECA(
          text: 'Confirmar',
          buttonColor: Colors.blue,
          textColor: Colors.white,
          onPressed: () {},
        ),
      ),
    );
  }
}
