import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/utils/getFontSize.dart';
import '../../../core/widgets/custom_text_form_field.dart';
import '../../../l10n/app_localizations.dart';

class ShootMeAnEmailContainer extends StatelessWidget {
  final double height;
  final double width;
  const ShootMeAnEmailContainer(
      {super.key, required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    final TextEditingController _yourName = TextEditingController();
    final TextEditingController _yourEmail = TextEditingController();
    final TextEditingController _yourMessage = TextEditingController();

    return Container(
      padding: EdgeInsets.symmetric(horizontal: width / 10),
      height: height,
      width: width * 0.65,
      decoration: const BoxDecoration(
        color: AppColors.bgColor,
        boxShadow: [
          BoxShadow(
            spreadRadius: 5,
            color: AppColors.greyColor, // Adjust the shadow color
            blurRadius: 5, // Adjust the blur radius
            offset: Offset(5, 5), // Adjust the offset
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppLocalizations.of(context).dontFeelShy,
            style: TextStyle(
              fontSize: getCustomFontSize(
                size: AppLocalizations.of(context).m,
                width: width,
              ),
            ),
          ),
          Text(
            AppLocalizations.of(context).gotAQuestion,
            style: TextStyle(
              fontSize: getCustomFontSize(
                size: AppLocalizations.of(context).xs,
                width: width,
              ),
            ),
          ),
          CustomTextFormField(
            width: width,
            textController: _yourName,
            labelText: AppLocalizations.of(context).yourName,
          ),
          SizedBox(height: width / 60),
          CustomTextFormField(
            width: width,
            textController: _yourEmail,
            labelText: AppLocalizations.of(context).yourEmail,
          ),
          SizedBox(height: width / 60),
          CustomTextFormField(
            width: width,
            textController: _yourMessage,
            labelText: AppLocalizations.of(context).typeYourMessageHere,
            maxLines: 5,
          ),
          SizedBox(height: width / 60),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.buttonColor,
              fixedSize: Size(width / 10, width / 25),
            ),
            onPressed: () {},
            child: Text(
              AppLocalizations.of(context).send,
              style: TextStyle(
                color: AppColors.textColor,
                fontSize: getCustomFontSize(
                    size: AppLocalizations.of(context).xxs, width: width),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
