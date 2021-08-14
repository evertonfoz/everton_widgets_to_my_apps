import 'package:everton_widgets_to_my_apps/in_processing/mobx_store/in_processing_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

class InProcessingWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        if (GetIt.I.get<InProcessingStore>().isInProcessing) {
          return Center(
            child: Image.asset('assets/images/gifs/circular_indicator.gif'),
          );
        }
        return Container();
      },
    );
  }
}
