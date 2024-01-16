import 'package:flutter/material.dart';
import '../../gen/assets.gen.dart';
import '../../l10n/app_localizations.dart';
import '../constants/app_colors.dart';

class CustomButton extends StatelessWidget {
  final double height;
  final double width;

  CustomButton({
    required this.height,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: height,
          width: width,
          decoration: const BoxDecoration(
            color: AppColors.buttonColor,
            borderRadius: BorderRadius.all(Radius.circular(25.0)),
          ),
          child: Row(
            children: [
              SizedBox(width: width / 12.5),
              Text(
                AppLocalizations.of(context).moreAboutMe,
                style: const TextStyle(
                  color: AppColors.textColor,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: width / 17),
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey
                          .withOpacity(0.5), // Adjust the shadow color
                      blurRadius: 5, // Adjust the blur radius
                      offset: Offset(-5, 1), //// Adjust the offset
                    ),
                  ],
                ),
                child: Assets.icons.circularArrow.svg(width: width / 3.5),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
