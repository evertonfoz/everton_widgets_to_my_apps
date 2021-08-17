import 'package:flutter/material.dart';

class BrandImageECA extends StatelessWidget {
  final String urlImage;
  final BoxFit boxFit;

  const BrandImageECA({
    Key? key,
    required this.urlImage,
    this.boxFit: BoxFit.fitWidth,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      urlImage,
      width: MediaQuery.of(context).size.width * .90,
      height: MediaQuery.of(context).size.height * .50,
      fit: boxFit,
    );
  }
}
