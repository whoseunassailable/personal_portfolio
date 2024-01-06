import 'package:flutter/material.dart';
import 'package:personal_portfolio/core/widgets/header_and_description.dart';
import 'package:personal_portfolio/core/widgets/hover_action.dart';
import 'package:personal_portfolio/core/widgets/section_header.dart';
import 'package:personal_portfolio/l10n/app_localizations.dart';
import 'package:shadow/shadow.dart';

import '../../../gen/assets.gen.dart';

class ExperienceSection extends StatefulWidget {
  const ExperienceSection({super.key});

  @override
  State<ExperienceSection> createState() => _ExperienceSectionState();
}

class _ExperienceSectionState extends State<ExperienceSection> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    bool isHovered = false;
    // Access the list of descriptions

    return Container(
      height: height + height / 4,
      width: width,
      color: Colors.white,
      child: Row(
        children: [
          SectionHeader(
            text: AppLocalizations.of(context).experience,
            rotatedBoxQuarterTurn: 3,
            borderRadius: const BorderRadius.only(
              bottomRight: Radius.circular(15.0),
              topRight: Radius.circular(15.0),
            ),
            offset: const Offset(10, -20),
          ),
          SizedBox(width: width / 11),
          Shadow(
              options: const ShadowOptions(
                  scale: 1, overlayColor: Colors.white, offset: Offset(2, 4)),
              child: Assets.icons.lineWithDots.svg(height: height * 0.9)),
          Column(
            children: [
              SizedBox(height: height / 6.25),
              SizedBox(
                height: height + height / 11.5,
                width: width / 1.5,
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    List<String> titleList = [
                      AppLocalizations.of(context).launchVentures,
                      AppLocalizations.of(context).mitFoss,
                      AppLocalizations.of(context).viralFission
                    ];
                    List<List<String>> titleListDescription = [
                      [
                        AppLocalizations.of(context)
                            .launchVenturesDescriptionPointOne,
                        AppLocalizations.of(context)
                            .launchVenturesDescriptionPointTwo,
                        AppLocalizations.of(context)
                            .launchVenturesDescriptionPointThree
                      ],
                      [
                        AppLocalizations.of(context).mitFossDescriptionPointOne,
                        AppLocalizations.of(context).mitFossDescriptionPointTwo,
                        AppLocalizations.of(context)
                            .mitFossDescriptionPointThree
                      ],
                      [
                        AppLocalizations.of(context).viralFissionDescription,
                      ]
                    ];
                    return _listOfExperience(
                        title: titleList[index],
                        description: titleListDescription[index],
                        isHovered: isHovered,
                        height: height,
                        width: width * 0.8,
                        index: index);
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  _listOfExperience({
    required String title,
    required List<String> description,
    required bool isHovered,
    required final height,
    required final width,
    required int index,
  }) {
    return HoverWidget(
      isHovered: isHovered,
      childWidget: HeaderAndDescription(
        title: title,
        descriptionPoints: description,
        titleFontSize: 28,
        descriptionFontSize: 18,
        height: height / 2.65,
        width: width * 0.3,
      ),
    );
  }
}
