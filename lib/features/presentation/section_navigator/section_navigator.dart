import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:personal_portfolio/core/widgets/custom_navigator.dart';
import '../../../core/constants/app_colors.dart';
import '../../../gen/assets.gen.dart';
import 'package:shadow/shadow.dart';

class SectionNavigator extends StatelessWidget {
  const SectionNavigator({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: width / 1.37,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: AppColors.bgColor
                    .withOpacity(0.5), // Adjust the shadow color
                blurRadius: 5, // Adjust the blur radius
                offset: const Offset(5, 5), // Adjust the offset
              ),
            ],
          ),
          child: Shadow(
            options: const ShadowOptions(
              overlayColor: AppColors.bgColor,
              offset: Offset(6, 9),
              blur: 3,
            ),
            child: CustomPaint(
              size: Size(
                width / 1.37,
                (width / 1.37 * 0.09678571428571429).toDouble(),
              ),
              painter: CustomNavigatorShape(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Assets.icons.aboutMe.svg(color: CupertinoColors.white),
                  Assets.icons.work.svg(),
                  Assets.icons.projects.svg(),
                  Assets.icons.education.svg(),
                  Assets.icons.contactUs.svg(),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
