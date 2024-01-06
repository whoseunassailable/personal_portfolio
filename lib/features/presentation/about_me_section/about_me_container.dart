import 'package:flutter/cupertino.dart';
import '../../../core/constants/app_colors.dart';
import '../../../l10n/app_localizations.dart';
import 'description_and_button.dart';
import 'image_container.dart';

class AboutMeContainer extends StatelessWidget {
  final double height;
  final double width;

  const AboutMeContainer(
      {super.key, required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height / 1.5,
      width: width / 1.17,
      decoration: BoxDecoration(
        color: AppColors.bgColor,
        borderRadius: BorderRadius.circular(25.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ImageContainer(height: height, width: width),
          SizedBox(width: width / 15),
          DescriptionAndButton(
            button: true,
            title: AppLocalizations.of(context).name,
            description: AppLocalizations.of(context).selfDescription,
          ),
        ],
      ),
    );
  }
}
