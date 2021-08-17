import 'package:flutter/material.dart';
import 'package:everton_widgets_to_my_apps/brand/brand_image.dart';

class BrandImagePage extends StatelessWidget {
  BrandImagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BrandImageECA(
          urlImage: 'assets/images/brand.png',
          boxFit: BoxFit.contain,
        ),
      ),
    );
  }
}
