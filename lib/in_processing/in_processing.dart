import 'package:everton_widgets_to_my_apps/in_processing/mobx_store/in_processing_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

class InProcessingIndicatorECA extends StatelessWidget {
  final String urlImage;

  const InProcessingIndicatorECA(
      {this.urlImage = 'assets/images/gifs/circular_indicator.gif'});

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        if (GetIt.I.get<InProcessingStore>().isInProcessing) {
          return Center(
            child: Image.asset(urlImage),
          );
        }
        return Container();
      },
    );
  }
}
