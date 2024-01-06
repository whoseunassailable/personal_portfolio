import 'package:flutter/material.dart';
import 'package:personal_portfolio/l10n/app_localizations.dart';
import 'package:personal_portfolio/core/widgets/section_header.dart';
import 'about_me_container.dart';

class AboutMeSection extends StatelessWidget {
  const AboutMeSection({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          width: width,
          height: height / 1.2,
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              AboutMeContainer(height: height, width: width),
              SizedBox(width: width / 15),
              SectionHeader(
                text: AppLocalizations.of(context).aboutMe,
                rotatedBoxQuarterTurn: 1,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15.0),
                  bottomLeft: Radius.circular(15.0),
                ),
                offset: const Offset(-10, 20),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
