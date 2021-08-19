import 'package:everton_widgets_to_my_apps/in_processing/mobx_store/in_processing_store.dart';
import 'package:example/dialogs/dialogs.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

void main() {
  GetIt.I.registerSingleton<InProcessingStore>(InProcessingStore());

  runApp(TestingWidgetsApp());
}

class TestingWidgetsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DialogsPage(),
    );
  }
}
