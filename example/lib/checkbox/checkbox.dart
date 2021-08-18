import 'package:flutter/material.dart';
import 'package:everton_widgets_to_my_apps/checkbox/checkbox.dart';

class CheckBoxPage extends StatelessWidget {
  CheckBoxPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CheckBoxECA(
          text: 'Confirmo',
          mainAxisAlignment: MainAxisAlignment.center,
          onChanged: (bool) {},
        ),
      ),
    );
  }
}
