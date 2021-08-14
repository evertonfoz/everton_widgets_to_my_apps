import 'package:everton_widgets_to_my_apps/appbar/appbar.dart';
import 'package:flutter/material.dart';

class AppBarPage extends StatelessWidget {
  const AppBarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: AppBarECA(
          leading: Text('Leading'),
          elevation: 8,
          actions: [Text('Actions')],
        ),
      ),
    );
  }
}
