import 'package:everton_widgets_to_my_apps/in_processing/in_processing.dart';
import 'package:everton_widgets_to_my_apps/in_processing/mobx_store/in_processing_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class InProcessingPage extends StatelessWidget {
  final InProcessingStore _inProcessingStore = InProcessingStore();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Observer(
            builder: (_) => InProcessingIndicatorECA(),
          ),
        ],
      ),
    );
  }
}
