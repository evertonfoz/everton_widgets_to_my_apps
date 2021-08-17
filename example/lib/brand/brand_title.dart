import 'package:flutter/material.dart';
import 'package:everton_widgets_to_my_apps/brand/brand_title.dart';

class BrandTitlePage extends StatelessWidget {
  BrandTitlePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BrandTitleECA(
        title: 'Everton Coimbra de Araújo',
        color: Colors.indigo,
        fontSize: 31,
      ),
    );
  }
}
