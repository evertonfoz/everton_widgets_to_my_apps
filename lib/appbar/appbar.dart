import 'package:everton_widgets_to_my_apps/in_processing/mobx_store/in_processing_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

class AppBarECA extends StatelessWidget {
  final List<Widget> actions;
  final double elevation;
  final Widget? leading;

  const AppBarECA({
    this.actions = const [],
    this.elevation = 0,
    this.leading,
  });

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      if (!GetIt.I.get<InProcessingStore>().isInProcessing) {
        return AppBar(
          leadingWidth: 50,
          elevation: elevation,
          actions: actions,
          leading: leading,
        );
      }
      return Container();
    });
  }
}
