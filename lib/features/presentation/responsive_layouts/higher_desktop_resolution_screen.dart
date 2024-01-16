import 'package:flutter/material.dart';
import 'package:shadow/shadow.dart';
import '../../../core/constants/app_colors.dart';
import '../../../gen/assets.gen.dart';

class HigherResolutionScreen extends StatelessWidget {
  const HigherResolutionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        color: AppColors.bgColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('height : $height, width : $width'),
                Shadow(
                  options: const ShadowOptions(
                      overlayColor: AppColors.bgColor,
                      scale: 1,
                      blur: 1.5,
                      offset: Offset(5, 5)),
                  child: Assets.icons.bgFrame.svg(
                    height: height / 10.5,
                    width: width / 1.37,
                  ),
                ),
              ],
            ),
            SizedBox(height: height / 56.98),
            Container(
              height: height / 6.722,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
