import 'package:flutter/material.dart';
import 'package:personal_portfolio/core/constants/app_colors.dart';
import 'package:personal_portfolio/core/widgets/header_and_description.dart';
import 'package:personal_portfolio/core/widgets/interactive_button.dart';
import 'package:personal_portfolio/core/widgets/section_header.dart';
import 'package:personal_portfolio/l10n/app_localizations.dart';
import '../../../gen/assets.gen.dart';

class ProjectSection extends StatelessWidget {
  const ProjectSection({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      height: height + height / 10,
      width: width,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          _imageContainer(
            height: height,
            width: width,
            image: Assets.images.mobileImage.image(),
          ),
          SizedBox(width: width / 25),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderAndDescription(
                title: AppLocalizations.of(context).kokoFreshAgent,
                descriptionPoints: [
                  AppLocalizations.of(context).kokoFreshAgentDescription
                ],
                titleFontSize: 45,
                descriptionFontSize: 30,
                height: height / 1.5,
                width: width / 2,
              ),
              SizedBox(height: width / 40),
              _buttonNavigator(height: height, width: width, context: context),
            ],
          ),
          SizedBox(width: width / 15),
          SectionHeader(
            text: AppLocalizations.of(context).projects,
            rotatedBoxText: 1,
            rotatedBoxContainer: 4,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(15.0),
              bottomLeft: Radius.circular(15.0),
            ),
            offset: const Offset(-10, 20),
          ),
        ],
      ),
    );
  }

  _imageContainer(
      {required final height, required final width, required Widget image}) {
    return Container(
      height: height * 0.9,
      width: width / 3,
      color: Colors.transparent,
      alignment: Alignment.center,
      child: image,
    );
  }

  _buttonNavigator(
      {required double height,
      required double width,
      required BuildContext context}) {
    return Row(
      children: [
        InteractiveButton(
          height: width / 18,
          width: width / 15,
          childWidget: Assets.icons.leftArrow.svg(),
        ),
        SizedBox(width: width / 30),
        InteractiveButton(
          height: width / 18,
          width: width / 7,
          color: AppColors.buttonColor,
          childWidget: Text(
            AppLocalizations.of(context).snapshots,
            style: TextStyle(fontSize: width / 45),
          ),
        ),
        SizedBox(width: width / 30),
        InteractiveButton(
          height: width / 18,
          width: width / 15,
          childWidget: Assets.icons.rightArrow.svg(color: Colors.black),
        ),
      ],
    );
  }
}
