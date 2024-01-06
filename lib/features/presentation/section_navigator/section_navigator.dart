import 'package:flutter/cupertino.dart';
import '../../../core/constants/app_colors.dart';
import '../../../gen/assets.gen.dart';

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
                    .withOpacity(0.0), // Adjust the shadow color
                blurRadius: 0, // Adjust the blur radius
                offset: Offset(5, 5), // Adjust the offset
              ),
            ],
          ),
          child: Assets.icons.bgFrame.svg(),
        ),
        // Assets.icons.bgFrame.svg(
        //   width: width / 1.37,
        // ),
      ],
    );
  }
}
