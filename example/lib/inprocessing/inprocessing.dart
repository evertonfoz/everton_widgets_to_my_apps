import 'package:everton_widgets_to_my_apps/in_processing/in_processing.dart';
import 'package:everton_widgets_to_my_apps/in_processing/mobx_store/in_processing_store.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class InProcessingPage extends StatelessWidget {
  InProcessingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InProcessingIndicatorECA(
            urlImage: 'assets/images/circular_indicator.gif',
          ),
          Center(
            child: ElevatedButton(
              onPressed: () => GetIt.I
                  .get<InProcessingStore>()
                  .registerIsInProcessing(
                      !GetIt.I.get<InProcessingStore>().isInProcessing),
              child: Text(
                'Processar',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
