import 'dart:ui';

import 'package:flutter/cupertino.dart';

import '../../gen/assets.gen.dart';

class ImagePosition extends StatelessWidget {
  bool? blurImage;
  final Widget image;
  final double left;
  final double? top;

  ImagePosition({
    super.key,
    required this.image,
    this.blurImage = false,
    required this.left,
    this.top,
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Positioned(
      left: left,
      top: top,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50.0),
        child: blurImage!
            ? ImageFiltered(
                imageFilter: ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
                child: Assets.images.sectionImage.image(
                  height: height / 1.8,
                  width: height / 1.8,
                  fit: BoxFit.fitWidth,
                ),
              )
            : Assets.images.sectionImage.image(
                height: height / 1.8,
                width: height / 1.8,
                fit: BoxFit.fitWidth,
              ),
      ),
    );
  }
}
