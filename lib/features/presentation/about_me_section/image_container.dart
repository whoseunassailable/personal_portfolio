import 'package:flutter/cupertino.dart';

import '../../../core/widgets/image_position.dart';
import '../../../gen/assets.gen.dart';

class ImageContainer extends StatelessWidget {
  final double height;
  final double width;
  const ImageContainer({super.key, required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height / 1.7,
      width: width / 3,
      child: Stack(
        fit: StackFit.loose,
        children: [
          ImagePosition(
            image: Assets.images.sectionImage.image(),
            blurImage: true,
            left: width / 23,
            top: width / 40,
          ),
          ImagePosition(
            image: Assets.images.sectionImage.image(),
            left: width / 15,
          ),
        ],
      ),
    );
  }
}
